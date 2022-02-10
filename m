Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E19DD4B0E38
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 14:15:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242064AbiBJNPW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 08:15:22 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:47920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239881AbiBJNPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 08:15:21 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C101F1142
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:15:20 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id da4so10843318edb.4
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IDFdLfJtlG9kbEXdQ+MVN7+prsgCVcqyHxP/Y3ykVls=;
        b=F8D9SmUjEPCEirAKI6VHBHib2i+fWwlv1wRVaJoxQQD9NzbzGzQYoIpDXMah0HpSYX
         hmvhSZUNjNxg30SnfCg++SAxqBSJ21w3S69bxTQsQitQdw7GQm0cYOcibxyRYTMptC95
         6LRh4lym49q5/2K6W+aCYK8Hzxxls+m0HnflKw7aAUABsGY3FSUmNo7Ej47wO5XBoeX4
         0Mgu/zveeDVFPy0jP9ZBL0ypXg8/GF/ys/fqT5deAEm/EyMz8sqIFXW5wXhFcJo4IkVy
         nKz9W5BVvjGuE/5Rl0oRqqgLakIZN3Naqlk+uHL+CJTisyxz+uGnlpUdLoHEliU1XBFK
         1+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IDFdLfJtlG9kbEXdQ+MVN7+prsgCVcqyHxP/Y3ykVls=;
        b=eRT0H+ytbExV8Wv1cFA+t/wNpSFFOtKOmooocY6oBn/LBD2Xle9otlVcN0H/Ys+SMq
         kEIYrrdA/sCQRqNriUrOdGoMG5MmsdcnbDdnE5yeDKTGep41j3p3OOm3gjFcO+nwyy6d
         Awuz0bnlfWvYjt1AJ4ZmvoY7rqiaoSKXYDYLE8CCkagQUJ7pG42m5hgEVL+bExSrWdUS
         EhTThKjzh0opB1F3ncUHPaG2IGRQLftD7On7rB74d4Z+cW6khCNAJUO+jiGync9SbK4D
         cG8jwnQnhoeyX3MsVSLCSqMEnOkKO0VMk7e/U+1e/TPUHOZt1dTS0Z7eD3XV+MuuMmPS
         QzwA==
X-Gm-Message-State: AOAM530ITpolIfIp6D0E7gDJsS/CKZqUnWWts6+GKyC0haILZJF0Ecmc
        Q8o5Kg4Ya59XRrTVItu5td8=
X-Google-Smtp-Source: ABdhPJzOMe5zGljbr+jECC1VrFrmXL0gmt9Ei+JTZ807FDeFFZDDLr8caxaTV4TkVYfkTnMd0jbfxQ==
X-Received: by 2002:a05:6402:2688:: with SMTP id w8mr8406868edd.393.1644498919204;
        Thu, 10 Feb 2022 05:15:19 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id s8sm6949538ejb.59.2022.02.10.05.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 05:15:18 -0800 (PST)
Message-ID: <2fa2e53d-da1c-6957-33ed-f3e9806347cf@gmail.com>
Date:   Thu, 10 Feb 2022 14:15:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 19/23] arm64: dts: rockchip: rk3568-evb: Enable VOP2
 and hdmi
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-20-s.hauer@pengutronix.de>
 <3492afbf-b9fc-d5f5-6f7a-2157442d8209@gmail.com>
 <20220210114746.GX18637@pengutronix.de>
From:   Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220210114746.GX18637@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2/10/22 12:47, Sascha Hauer wrote:
> On Thu, Feb 10, 2022 at 01:10:32AM +0100, Johan Jonker wrote:
>> Hi Sascha,
>>
>> Something with port and endpoint gives notifications.
>> Somehow with the conversion of rockchip,dw-hdmi.txt to YAML not all SoC
>> options were checked/covered (see rk3328 and rk3568).
>>
>> Allow multiple vop:
>> port or
>> port@0
>> 1x vop -> endpoint
>>
>> 2x vop -> endpoint@0
>>        -> endpoint@1
>>
>> Also allow for connector:
>> (not all existing DT have this yet)
>> port@1
>>       -> endpoint
>>
>> See also at graph.yaml
> 
> Ok, let me see if I get this right. The HDMI can either have one or two
> ports. It has one when the HDMI connector is not described in the device
> tree and two when it is. Also the first (or only) port can have one or
> two endpoints. It has one endpoint when the SoC has a single VOP and two
> endpoints when the SoC has two VOPs.
> 
> It's been a painful morning because my YAML knowledge is fairly limited,
> but here's what I came up with:
> 
>   ports:
>     $ref: /schemas/graph.yaml#/properties/ports
>     unevaluatedProperties: false
>     patternProperties:
>       "^port(@0)?$":
>         $ref: /schemas/graph.yaml#/properties/port
>         description: Input of the DWC HDMI TX
>         properties:
>           endpoint:
>             description: Connection to the VOP
>           endpoint@0:
>             description: Connection to the VOPB
>           endpoint@1:
>             description: Connection to the VOPL
>     properties:
>       port@1:
>         $ref: /schemas/graph.yaml#/properties/port
>         description: Output of the DWC HDMI TX
> 
> Does this look sane to you? With this a make dtbs_check on this binding
> doesn't generate warnings anymore, and even better it does generate
> warnings when I add some wrong nodes/properties to the dts files.

Hi,

Send a patch to rob+dt and he will let you know... ;)

Also could you test the ARM branch as well just for sure with:
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make  dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml

Could you group your serie a bit:
dt-bindings
drm patches
dts changes

Johan

> 
>> ===
>>
>> dtc -I dtb -O dts rk3568-evb1-v10.dtb
>> <stdout>: Warning (avoid_unnecessary_addr_size):
>> /hdmi@fe0a0000/ports/port@1: unnecessary #address-cells/#size-cells
>> without "ranges" or child "reg" property
>> <stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@0:
>> graph node has single child node 'endpoint@0',
>> #address-cells/#size-cells are not necessary
>> <stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@1:
>> graph node has single child node 'endpoint', #address-cells/#size-cells
>> are not necessary
> 
> That's easy. I dropped the @0 suffix and reg property from the node.
> 
> Sascha
> 
