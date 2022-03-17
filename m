Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0352C4DC010
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 08:20:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230178AbiCQHV2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 03:21:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbiCQHV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 03:21:27 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C883B19ABF6
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 00:20:11 -0700 (PDT)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1BB923F4BE
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 07:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647501610;
        bh=RoUeA1wG24c/Crhww+WUj9NHBvCMvLhd7U/GxxINFtE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=SDm02lvzUMt5lFUMgW+A8XoiRTu9ByN3FDnVjoT85z23qH2KEnHOTjLx4t6cplL6Q
         NNVWabaVAqxCnbISzBgz1d7Wj8uJkubR4iYOxeJKgW0XK0ovtswDRH0Xnz2dQtArDO
         t7HP57bhUQjFwA2O4LFmBtkIAGhUO7CNQO4XT+eXhKeRbHbwjstLki5sJjKSFdE900
         V28kt6bZQJSVWRtBtx/mOC6hzZqFjYKPkVyo82QeHhHeJUHYNqIHGKUT0auEuLVu+n
         3SIpc0tQUVUIq61Ef5fiBLDhRJT+HMQALTqiOT1bA4Fk7gOiSsRff0HaDZQCG05n8p
         bnXGITrEvh3Rg==
Received: by mail-wm1-f70.google.com with SMTP id a26-20020a7bc1da000000b003857205ec7cso1804893wmj.2
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 00:20:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RoUeA1wG24c/Crhww+WUj9NHBvCMvLhd7U/GxxINFtE=;
        b=xymAAV5sfsms4rt3gq4bTMvbSEyMpX0RmR3Nw7LExM6DKYf+jUod0v1tY0LsKgwAd3
         7EtAip9Jjq1eoEd9JlVHvKMhDEmXMD5J657DCrKZm4n1AIL0dA33e8x0zfre8/7d+v3L
         SfVABo9m2/3ui3LHq11FajxzqUDj/aQI1Ht1uuxOVdLB5AItBkdUrnlPgOosr1Y02Uu9
         eHsVvuaCVu38jBUoJXSyv1qm/YAVdQ7EkgWhBhV42aUy3CPwym1qZqeFv9sOmqEOpYSh
         qBtuqHCB/tNtuOivjl0TES7T8dPQW05eBFvUaXxLwY5CTLPMMA2q/klVK/Rzrni6ZaAx
         GBzw==
X-Gm-Message-State: AOAM532lVf0xs0I2+4tNaq3XUN5s8ia3ScnWpp8ig2rbp3Vf1zx82V9i
        KK1sc9HsVor3raum8HmnoRn12U6h/zekGnOYOSpj+3XUDGAjb5nkR/CN1dD2LLloWtv464JaxrC
        UrMS93F+qWohddKd/oRcoQIHnzvj7f0peEO9HNYU=
X-Received: by 2002:a5d:5512:0:b0:1ef:5f08:29fb with SMTP id b18-20020a5d5512000000b001ef5f0829fbmr2757893wrv.653.1647501609583;
        Thu, 17 Mar 2022 00:20:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHbCVoeUsHyZ8wNSet5MR49AAhKrHaURXBuhyPImzMsALzcMVNd+fUfq5fTlEsXD2dGW/xxQ==
X-Received: by 2002:a5d:5512:0:b0:1ef:5f08:29fb with SMTP id b18-20020a5d5512000000b001ef5f0829fbmr2757858wrv.653.1647501609413;
        Thu, 17 Mar 2022 00:20:09 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id p4-20020a05600c358400b00389f61bce7csm5108647wmq.32.2022.03.17.00.20.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 00:20:08 -0700 (PDT)
Message-ID: <e4c85b2d-8546-1740-9f83-d4cf985949d1@canonical.com>
Date:   Thu, 17 Mar 2022 08:20:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V9 1/5] dt-bindings: display: mediatek: add aal binding
 for MT8183
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, chunkuang.hu@kernel.org,
        matthias.bgg@gmail.com, robh+dt@kernel.org
Cc:     p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
        jassisinghbrar@gmail.com, fparent@baylibre.com,
        yongqiang.niu@mediatek.com, hsinyi@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220317051831.7107-1-rex-bc.chen@mediatek.com>
 <20220317051831.7107-2-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220317051831.7107-2-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2022 06:18, Rex-BC Chen wrote:
> Add aal binding for MT8183.
> 
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,aal.yaml   | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
