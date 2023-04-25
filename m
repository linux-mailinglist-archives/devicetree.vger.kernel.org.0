Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5DBD6EE7E7
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 20:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235070AbjDYS5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 14:57:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235153AbjDYS4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 14:56:45 -0400
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C858916F3D
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 11:56:22 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6a604259983so4731344a34.2
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 11:56:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682448968; x=1685040968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E2Pm94d+ETtvQvtSiYGYJJyGRbZetTQzfPQibc7M6Yc=;
        b=PvgqE0w1a8yD+GXSN18G8yqcORPxXAP8lC91j6DGW24p6FXPrsSXPZAE1nhVuzZpsj
         CKRtnSe0LBu+AQ5ChHZ+in8ofVD3XMz1Vn+OierKHwQRMYDQN5zLYRVVqC11dk/vFht6
         gBw/oLQsewmWKsF60VNNZf3Wa1JePFrAGxtu8WYU/wrkN7ux74poG0mc/0tm2DV6UwI4
         6q7XAyXBCETRN7/rV4VURe7DXm3i1PgdLYNVUUyloU+lkxkoTcvRH0pIuzd3cvhH/xrk
         PZD2Qvf8KPyWYJ0lFT1XVhi9GDrHngCEksDt6oz0l1PdYkKfCqIrjK4dUpIXQtH30oai
         FDEQ==
X-Gm-Message-State: AAQBX9dQ1am/A/znVi3oIjirGRXAYBDFr5aGAHCO2exRN3O37DhKYDqs
        UbxXZTQKI0C4AaQbPKdaAA==
X-Google-Smtp-Source: AKy350aq3VPWA15tx1n6E49zmy3RkR1NktVBHF5gEUF8eyy7/Xi1FV1SIuOuPtHLw9y69YkT7Ji2hQ==
X-Received: by 2002:a9d:7a96:0:b0:6a6:4538:dde7 with SMTP id l22-20020a9d7a96000000b006a64538dde7mr6955629otn.28.1682448967987;
        Tue, 25 Apr 2023 11:56:07 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bt8-20020a05683039c800b0069f951899e1sm6071450otb.24.2023.04.25.11.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 11:56:07 -0700 (PDT)
Received: (nullmailer pid 2081284 invoked by uid 1000);
        Tue, 25 Apr 2023 18:56:06 -0000
Date:   Tue, 25 Apr 2023 13:56:06 -0500
From:   Rob Herring <robh@kernel.org>
To:     Conor Dooley <conor@kernel.org>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
        linux-riscv@lists.infradead.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH RESEND] dt-bindings: riscv: add sv57 mmu-type
Message-ID: <168244896648.2081233.16478595076932550051.robh@kernel.org>
References: <20230424-rival-habitual-478567c516f0@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424-rival-habitual-478567c516f0@spud>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 24 Apr 2023 18:05:43 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Dumping the dtb from new versions of QEMU warns that sv57 is an
> undocumented mmu-type. The kernel has supported sv57 for about a year,
> so bring it into the fold.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Resending with the missing CCs.
> Palmer, you can take this for 6.4 if you want, otherwise I'll grab it
> after the merge window. I doubt there's a rush when it's been missing
> for a year or so.
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

