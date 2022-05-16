Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1CB2528828
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 17:12:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235087AbiEPPMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 11:12:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiEPPM3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 11:12:29 -0400
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9700B33A35
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:12:28 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-f189b07f57so6969942fac.1
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:12:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=znK6Xi/ZZGwAG1mufIgwNSTMcdTMg6wUp+SUygn6ioI=;
        b=7bgJsBR5WTbd2MENMt3VYu0T56MxmGrKq3PhZY5o+yZL744mdtW0Drv5VejOosuhgi
         G368A6Yro1P7Kzm7X7mhcT467glsSjaIkg+2eMMC67tWdMFwEyrlqGymYyljVn17gdNp
         NpAp+XXs2nqJZ7r3hKW4ToYr0z4Qyt9XeYKUF2YTxr+faPerpb0tlRrewSa6yXXlg/ap
         CJkLR34KrgC76vosUqQIZQp2vMWbBL7KxHTBwH30a825MX/VAdBUyptGCsG7PdVqe8x1
         Sbyo1SKVUavlSHpy43biM0yI3QCANgSu/J/rKZtWl4gf3D092Rxx9g+e+a8mVrVTu5Xb
         fUPA==
X-Gm-Message-State: AOAM531TOwOvabkEPfOeqxwdprGccJYkVkDoRxO3YPqdTdwRD5Q3TRUZ
        QXfUYfRbVQz3JGozXWuqDw==
X-Google-Smtp-Source: ABdhPJxPwFMBKNVLxZpvbM0oKINdhczioV6MSSHnKVI7RMNwc5BdKvXqQN13cVGRLoewA3V9riVaNQ==
X-Received: by 2002:a05:6870:4596:b0:da:b3f:2b1d with SMTP id y22-20020a056870459600b000da0b3f2b1dmr16326831oao.188.1652713947847;
        Mon, 16 May 2022 08:12:27 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r12-20020a056808210c00b00325cda1ff8fsm3826021oiw.14.2022.05.16.08.12.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 08:12:27 -0700 (PDT)
Received: (nullmailer pid 2653921 invoked by uid 1000);
        Mon, 16 May 2022 15:12:26 -0000
Date:   Mon, 16 May 2022 10:12:26 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <20220516151226.GA2653888-robh@kernel.org>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <20220511082109.1110043-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220511082109.1110043-2-s.hauer@pengutronix.de>
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

On Wed, 11 May 2022 10:21:07 +0200, Sascha Hauer wrote:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v1:
>     - Drop minItems
>     - Add reg-names properties to example
> 
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
