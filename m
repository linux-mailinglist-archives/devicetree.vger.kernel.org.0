Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BED395B6265
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 22:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229935AbiILU4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 16:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229913AbiILU4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 16:56:17 -0400
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70E0F476E9
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:16 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1225219ee46so26724095fac.2
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=1lPkr30LZ1mcA5+eRLgVHYERGTEY7A4Lxc1F1Uu2WAk=;
        b=XI3V9feaLRw6T+tG3z2EdWlo5Mi0wyzYZEbO8NUD5J4GC/mscMJKhFPIr+nJiCd6us
         0NFy6jqvOfUhMXIvyhX4lJTEoNHtwA/YEluimHcz5sHVJBoWPcs0Q+N+ZVGjC7dx5cjF
         RpKvKIBLgv9wLC56o8YgGjTnP1mvyaF5SyxqDETa6735BSpqGKhzeqGuMdTOgHkJRLGl
         h5317z7DphJQVWmD8sMd2hR95ZfoXSSOlp4/JC5E7dhGhRMT9RAiIzcj7uZ60/SnGsAB
         PxNg6/KAvpDueNNUX5hwaa9TIO1mWTTq9rT87x4pNCnTY4Bxj4o0rAS6Kn0VRKP/ABeL
         zzHw==
X-Gm-Message-State: ACgBeo0AtqlBscCFv+38mz+epSXwySagywAELjefCpIz8Qze17IV+cMc
        P224LnHe+BCvVuGLxEvlNjQNe6rNjQ==
X-Google-Smtp-Source: AA6agR4pHFqmvL7knPQdKK8cbWBP/woGxfzYh/nLlHDzUev48QmbswU3fZb8w1qLjEC+B9MEDbgBiA==
X-Received: by 2002:a54:4e8e:0:b0:343:fe9:9516 with SMTP id c14-20020a544e8e000000b003430fe99516mr101911oiy.198.1663016175146;
        Mon, 12 Sep 2022 13:56:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k6-20020a4ad106000000b00448a3ecdc9dsm4593479oor.22.2022.09.12.13.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:14 -0700 (PDT)
Received: (nullmailer pid 1818700 invoked by uid 1000);
        Mon, 12 Sep 2022 20:56:14 -0000
Date:   Mon, 12 Sep 2022 15:56:14 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v4 03/13] clk: rockchip: Add dt-binding header for RV1126
Message-ID: <20220912205614.GA1818666-robh@kernel.org>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
 <20220907160207.3845791-4-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220907160207.3845791-4-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Sep 2022 21:31:57 +0530, Jagan Teki wrote:
> Add the dt-bindings header for the Rockchip RV1126, that gets shared
> between the clock controller and the clock references in the dts.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v4:
> - update dual-license
> Changes for v3:
> - update the file name
> Changes for v2:
> - exclude from clk patch
> 
>  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
>  1 file changed, 632 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> 

Acked-by: Rob Herring <robh@kernel.org>
