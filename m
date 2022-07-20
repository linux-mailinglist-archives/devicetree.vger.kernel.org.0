Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4834757BCD2
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 19:38:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbiGTRiO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 13:38:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232222AbiGTRiJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 13:38:09 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5DFE70984
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:38:07 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id u14so13962083lju.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ICIFskbhDAxkqyFPFywjKrA2bMQUTmKy88Z9Ca4QMwc=;
        b=pU4v+a1Ih9uwueVmVnw/nnRcFBk6TOtjSs23U+h8gRjVlV7wDHKSroELFu22DOnyC0
         MyE9ToyAShxsaTpXlt+/dHrJQvJsInZpC6XHFrdQORgZmkhNz/GcLEL7aLSOnjghiFRF
         yoAig85kwvl0gdzvs1inz7BQHrpwSaBinQUgdUT2+pBtFMNJin0BEW+PLOuwnOieRzVS
         eAJFwaq+rF9flazp7+kc/D2u4tCzcGylZyCH4TsvhRfddoo6xg4QmIthqM/kEy8hQeCU
         JWHiDHl/sFzRmFD9/NxBYwUKVb7BC5bLLOH20jDlZ90DknQPvGOX7X1IVUSH0s7dKspk
         qXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ICIFskbhDAxkqyFPFywjKrA2bMQUTmKy88Z9Ca4QMwc=;
        b=hYgs+Zw6FV2r1wEEV543Cw6qpvsYDlLsZ/SCL/q5BdEJJDqXF6P8/VHXzbR3+bjnyk
         fnDaXFtPtu0UV24J9CrIRGK/WqVGMSJ0AkCGlkTz6NIhIIN5LJGJ7pQRRYQeSfKR4uT1
         ICKxm14N3cQUMk4MzdvhJFSZzhbhkFVAeiHIEffIlUlVi0ma98f5fZN/X/P41xHH3myV
         wGik6BO8GkFLyGHPRffvx1XX5GzP4Ho9lMu15yzsl38e3wAUTfVu6aI7aOEPU0fumEx9
         VpgMZBWayCY+WsAlVUtW9MqLYQymH/ETI4wWGu4W5/JAsPt7X4Cm0i4UIzA+19tX77rq
         1fyw==
X-Gm-Message-State: AJIora8LuNsmn48dit3XGzuFWFutcXg5XR3+n7x/vz6xwVZUxes9KPwa
        S4SlQWNiSHvlD5LuqtNjuY0aHA==
X-Google-Smtp-Source: AGRyM1sG7lbScHD/ieFpA/+GQ6oByCyWagIFfgC4I8Gr18ItlMyGc5wtlKO06bA6wu+LjYej5okHsQ==
X-Received: by 2002:a2e:8e28:0:b0:25d:c1b9:aede with SMTP id r8-20020a2e8e28000000b0025dc1b9aedemr5581492ljk.28.1658338686017;
        Wed, 20 Jul 2022 10:38:06 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id v14-20020a056512348e00b0047f6b8c2127sm3909309lfr.186.2022.07.20.10.38.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 10:38:05 -0700 (PDT)
Message-ID: <3fab6834-7622-a33a-dc97-9c630702b6fe@linaro.org>
Date:   Wed, 20 Jul 2022 19:38:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 07/21] dt-bindings: power: mediatek: Update example in
 dt-bindings
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220720123023.13500-1-tinghan.shen@mediatek.com>
 <20220720123023.13500-8-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720123023.13500-8-tinghan.shen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 14:30, Tinghan Shen wrote:
> Update the scpsys node compatible string to align with the
> scpsys node bindings.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>

Squash it with previous because logically it's the same change.

Best regards,
Krzysztof
