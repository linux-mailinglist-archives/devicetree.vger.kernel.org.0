Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71C0A529D33
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 11:05:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244029AbiEQJE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 05:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244116AbiEQJEv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 05:04:51 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B4849913
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:04:17 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t6so23798841wra.4
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=BD63j2HpRLVuVqfGZEYfIBf5UOk2z74/MiITtatEVYY=;
        b=qAorOprbtPfV1b3pNa2UAWKB8p3iJPpS6OPxnRet+P/pISt0J0679h5riWvP3JknqC
         KNgJIai5H2dqh5GQEfo3KtKmjv5XcRdmbnVWVGRSeZv9QWuKDIbs4BP/+FbdA7A+Kwo1
         ciguiYqws762Zc6SVDXDa39jID2pE/SPaC0+8Jr1RJmriexFZ04MlAou0f+YbSjrTfFj
         PEPucdyzzd5s0tQKiZE/XjkNSdKSi3fNQ5tTP48utatjP/bnilJyzE6jMqGJVq6cboTr
         A8D7ILm6yS5KXRAo8J4xXjQoI0WaCsxCli5KJE5zzebFaXU5x1ozr5S/+mTvO6FDVb/e
         0HDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=BD63j2HpRLVuVqfGZEYfIBf5UOk2z74/MiITtatEVYY=;
        b=ASrxqu/fVugh8VY/8sN9DLjYV18bAbyHGROV257miI3SKe8yO5j14Ek+Fxl1M6xiEg
         snqdCtCL9IvusKsI76CfsBsZdm1VrHWxfse8Le6XXR0Ph467feoNPUYiUiikwpeD0PuB
         WT7j4Q+/vF/4XGBOfgd3thNgcfPj4WmFhzfSburzj6JW9MlGIhHmzgeJHmHsRxhh209Q
         BqGooAH11v2g9IvXh9ksysEPnsXWVuX5IatXEsvD6m/0e4CW4ESByym2sf6i3/usCZfJ
         Se/4IDkUuvUvjna+urMq8xrS7+wgqrd63Ga0xnfYt50Js9XvcQSgpAGGhu8p2z989cVk
         Umdg==
X-Gm-Message-State: AOAM531NvcXEIvCBU1L5ZWgAI0oCtm6DBo2jyYZSqcGa6M2c/BLmgcaA
        apeSs61aIJSEeeuhdQAveIdrYg==
X-Google-Smtp-Source: ABdhPJzUela18pWzJFpYz/kj0jG1AUrEkLuAYkMqxMW/Vpo/UasSs3xIMnmYVMQ+OQrGfUJyatolOg==
X-Received: by 2002:adf:9d89:0:b0:20d:e97:1640 with SMTP id p9-20020adf9d89000000b0020d0e971640mr5337204wre.441.1652778256340;
        Tue, 17 May 2022 02:04:16 -0700 (PDT)
Received: from p14s ([193.117.214.243])
        by smtp.gmail.com with ESMTPSA id 19-20020a05600c26d300b003942a244f35sm1283224wmv.14.2022.05.17.02.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 02:04:15 -0700 (PDT)
Date:   Tue, 17 May 2022 10:04:12 +0100
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado 
        <nfraprado@collabora.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>, kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Tzung-Bi Shih <tzungbi@google.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH v5 0/2] Mediatek SCP dt-binding tweaks
Message-ID: <20220517090412.GA34828@p14s>
References: <20220511195452.871897-1-nfraprado@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220511195452.871897-1-nfraprado@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I have applied this set.

Thanks,
Mathieu

On Wed, May 11, 2022 at 03:54:50PM -0400, Nícolas F. R. A. Prado wrote:
> 
> Two simple patches for the Mediatek SCP dt-binding. The first fixes the
> reg/reg-names property while the second adds a new optional
> memory-region property.
> 
> v4: https://lore.kernel.org/all/20220506213226.257859-1-nfraprado@collabora.com
> v3: https://lore.kernel.org/all/20220503211114.2656099-1-nfraprado@collabora.com
> v2: https://lore.kernel.org/all/20220502192420.2548512-1-nfraprado@collabora.com
> v1: https://lore.kernel.org/all/20220429211111.2214119-1-nfraprado@collabora.com
> 
> Changes in v5:
> - Made l1tcm optional for mt8192/mt8195
> - Greatly simplified the constraints override in the if:then:
> 
> Changes in v4:
> - Reworked presence of l1tcm reg to be if:then: based and present only
>   on mt8192/mt8195
> 
> Changes in v3:
> - Made the cfg reg required again. After looking again into the mtk-scp
>   driver, only l1tcm is optional.
> 
> Changes in v2:
> - Dropped type and description from memory-region since it's a
>   well-known property
> - Set memory-region maxItems to 1
> 
> Nícolas F. R. A. Prado (2):
>   dt-bindings: remoteproc: mediatek: Make l1tcm reg exclusive to mt819x
>   dt-bindings: remoteproc: mediatek: Add optional memory-region to
>     mtk,scp
> 
>  .../bindings/remoteproc/mtk,scp.yaml          | 47 +++++++++++++------
>  1 file changed, 33 insertions(+), 14 deletions(-)
> 
> -- 
> 2.36.1
> 
