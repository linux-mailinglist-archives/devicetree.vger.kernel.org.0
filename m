Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EFE959C933
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 21:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233350AbiHVTrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 15:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231745AbiHVTrJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 15:47:09 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B09794F67E
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:47:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 16569CE16F5
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:47:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2045C43142
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661197625;
        bh=YfsLUPS6bTH2Uxy1z7Ts5D2u2PeYR8PS6ksGGYcUYO0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=c4pFgOynXQk6wzzcWKEsxO7I6Gx9d9JFgcALefBLJbKAuoEFUOudKGdZrP+P6ZcVu
         kUjIkvE/GFCZ7KzCicyWZsGpeRtzAEnhBBYRjyJEA1YqOpbqfduUDanqub9JZAC6BE
         mXlK3L/+Vb81f0UqGfLXTTVmouJXWnvSaC+38aX21zRFuGaEiEHJyux+W3G6/SnRyZ
         hoFwA6/XhqgOKkGBShRn04I4NHZTf0XfPPTiIB2Yp1tUjsADt06OM4p0AI9NlTm0zQ
         VXuRNcQJziNmoi0jj+1tNNvCqzmEa/tAFl5ByxJPpeXDh+o8/Bc6RbcAgjpCboYfm6
         5kX3xXT75uCBg==
Received: by mail-vk1-f173.google.com with SMTP id 134so2454897vkz.11
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:47:04 -0700 (PDT)
X-Gm-Message-State: ACgBeo0Swx5cNGDIX0GwBkh+SA1t0XddU85upq/aBfmT8Rlh8wgNLQVA
        teuAbplHbT2sOLin8iJioVNzrYd18p7Jx6iX3g==
X-Google-Smtp-Source: AA6agR57aWAE+Qwly+9JkkeQREzX2krdza/TRmLUWzwke2NI3OAtDHQxkjsYdNUgGl0frU2Ms2FHrozR+vPLpWHGdu8=
X-Received: by 2002:a1f:1d4d:0:b0:382:59cd:596c with SMTP id
 d74-20020a1f1d4d000000b0038259cd596cmr8389055vkd.35.1661197623910; Mon, 22
 Aug 2022 12:47:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220822152224.507497-1-jean-philippe@linaro.org> <20220822152224.507497-3-jean-philippe@linaro.org>
In-Reply-To: <20220822152224.507497-3-jean-philippe@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Aug 2022 14:46:52 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ2dx56QTcPn2+ApzKq8iV9bFeXRMZfMiBoBk1rHAEP6g@mail.gmail.com>
Message-ID: <CAL_JsqJ2dx56QTcPn2+ApzKq8iV9bFeXRMZfMiBoBk1rHAEP6g@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: interrupt-controller: arm,gic-v3: Make
 'interrupts' optional
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 10:23 AM Jean-Philippe Brucker
<jean-philippe@linaro.org> wrote:
>
> A GICv3 implementation without virtualization, such as the base QEMU
> virt machine (without -M virtualization=on), does not issue maintenance
> interrupts. Therefore its device-tree node does not need an 'interrupts'
> property. Currently, validating the QEMU virt device-tree throws a
> warning that 'interrupts' is missing. Make it optional.
>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml     | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>
