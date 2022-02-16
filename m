Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9936E4B85C6
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 11:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbiBPKZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 05:25:04 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232100AbiBPKZD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 05:25:03 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12491206DD6
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:24:52 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EE21F407F2
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 10:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645007090;
        bh=rqHY5+dH47bdmvTAOE4I27WoThPEsLrYxKjIJ+9uRPc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=iUZkXTb4Tb7AAO/+lIOblf97iPvpPhRPa3j3Y2cSuyZW1gQrepI7o1Qdq+w71Td3J
         uVsDDGdEm+oTHqqnTZ1emqfg2yeaj/+FMCESYQJrlHt9pm4ZtvCt02FszNNhjO0EZy
         M3QUoKMGOhuG8tt7hmmbnhUXjCmL58t246ZDhhab2863ppzKFUHOKX1wEtwmHdvZ+z
         euFLcdYfkT0DdjABNB2FEeQsDDjfQRgr3Xox/K0c/gPW2iquSsmASrIqzB320uwV7s
         4XUPqXHXZ+YAlojctbUVgGAy9PKv3YdzPcpU2UEFbJBWIVzoXzWSM4zksQ+zUU4Hb1
         8P00+l51D3StA==
Received: by mail-ed1-f72.google.com with SMTP id f6-20020a0564021e8600b0040f662b99ffso1285744edf.7
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:24:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rqHY5+dH47bdmvTAOE4I27WoThPEsLrYxKjIJ+9uRPc=;
        b=sfxtEmqTkj9pW5c2hZ/qjWBas9rhUZZ5dtE+4Vsm5fVHu+XDBQh4YFQVsrF7CJZ/H5
         c/B8YcH8AWLBzQ+IKxJwxUn0UuCM1Dbf0TAoYtS2D27ns5G7LiBvqItXfZboYZ/6ZbGn
         rS5kjiMgx0I81YuzjbilGqLhWMBqVLAyUEhyIA0kgJoh1sk+9YUFPUrAJIalcjedAReF
         P1zX0J7wUTdZDyWBBchJFrMBIMz0MmFnnQtecRj4rUB14b+JI+zfcVkWK1Gkhyx2+oeW
         6hzx8EjMrl76E76/2k8pCeufFgvjoO8RNxbA+DafljW8zB1g1YVgs6iK+nHqhwxfaPo+
         /DWg==
X-Gm-Message-State: AOAM532exRjnPD42PUnRN+5NOnovWLtmCjjV1etU8Zb09ygPfN+s97aA
        2L9ysi3TBQzFINxIEQf1bPsJ/YOgBcxApsIjielanbHUS+dYPvFSYmcasAuEkqlCjCrIjGfGxOp
        cxb5E1HNpliNg54ImsgBn+esiUv2NQKzGZXAdbhc=
X-Received: by 2002:a17:906:4698:b0:6ce:470:b423 with SMTP id a24-20020a170906469800b006ce0470b423mr1645434ejr.103.1645007090699;
        Wed, 16 Feb 2022 02:24:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxjS3anZMmuOoVB1rPmpKsUJ3j2HrcgXBDQgzSEahKYbh2GBNoejxW3vRXYop71p/5TLP3Aug==
X-Received: by 2002:a17:906:4698:b0:6ce:470:b423 with SMTP id a24-20020a170906469800b006ce0470b423mr1645414ejr.103.1645007090555;
        Wed, 16 Feb 2022 02:24:50 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m28sm5054733ejn.50.2022.02.16.02.24.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 02:24:50 -0800 (PST)
Message-ID: <d229d163-223d-7481-cfdc-c83bcc2a2eb6@canonical.com>
Date:   Wed, 16 Feb 2022 11:24:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [v2,2/4] dt-bindings: pwm: Add compatible for MediaTek MT8192
Content-Language: en-US
To:     xinlei.lee@mediatek.com, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
        robh+dt@kernel.org, matthias.bgg@gmail.com, jitao.shi@mediatek.com
Cc:     allen-kh.cheng@mediatek.com, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
References: <1645003971-16908-1-git-send-email-xinlei.lee@mediatek.com>
 <1645003971-16908-3-git-send-email-xinlei.lee@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1645003971-16908-3-git-send-email-xinlei.lee@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2022 10:32, xinlei.lee@mediatek.com wrote:
> From: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
> 
> Add dt-binding documentation of pwm for MediaTek MT8192 SoC.
> 
> Signed-off-by: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
