Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6007F5968A2
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 07:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232810AbiHQFfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 01:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbiHQFfm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 01:35:42 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A27C5D0FF
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 22:35:41 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id x10so12555349ljq.4
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 22:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=bHBxTrGeV4uX3RKPj3kIhCR1qMWY5TMaO/ZMSAA+DpY=;
        b=iT7SRCTQuPrgh4De5yQrnxK5ozQB5tyUZ8oxMXMRatGyyF1DzgWCjWenauP92iJRBG
         0VhHh1q803RGD26U/We6NvU1sSvyIzdR9HkK2SvYdzJ0KGMKL/AvkKtO5NFrfV2l4sV1
         OuMkSFqKT6N89GKjgdPtCdoxv12/4TL4pjpPdnEL8+YjaQm0F0ucrnz0YSNnxpxnBldp
         Ogxh9K57SD/lCxm8GQwbVzSvRm5nqFC0j5ukiJ0aET3Zt5Cmkhoy+fy9eHIJm/5NiVm8
         W+d5iP5RVYUm50MTv6UD99GR9aZqi1OYuBaw0XdzdCUNYOMqCvuNWnEOqPyM+dnGtf2G
         tEbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=bHBxTrGeV4uX3RKPj3kIhCR1qMWY5TMaO/ZMSAA+DpY=;
        b=F8FZc+nGs4KoJUODcoxX1T0hH6ahLgdNIvocUQC1JsjkjP4zwb09FZlDzW9b88ybCT
         nTHNpUjY87NJ6Ei4UHPL3Q94Pn727zkbZvKd/SLnfPR88eY/1gIpGSvyZUX5Y1TAVbUx
         8gJYS1bp3LO2PRcfzY/1UYYYdsUwMXF8VVHqBTUIyVRv6IZnpcSPcW+Il9jMsAD3l/xm
         6EtgZKqrPTJRgo3TykNXvM3RFNXQfTIo7eoOlulhWVSGy5M0EMN9Tl1H7buWXYdCJGSF
         vxyU4Bk6yNhkO7Sp/Y0QYMz7ArZOYMYukJ9yGUUPsZM6Szy9llEuo3hqcGFPnXZP+6Tx
         86mA==
X-Gm-Message-State: ACgBeo31V+wEeyFg8jPtEVS9Wo9Sbh2z+B0k4nDIN+uekttW5brgGFzN
        NjZ2jjDzu5ZO278LKNhhSTLIwg==
X-Google-Smtp-Source: AA6agR6gdlTnSi+flxS4mgsv/fvJDiQHfefYmbTiI48/+uMiUtBIk45srSbYy5of8xoABI8nx4CUdg==
X-Received: by 2002:a05:651c:c8f:b0:25e:4e3e:18c0 with SMTP id bz15-20020a05651c0c8f00b0025e4e3e18c0mr7733803ljb.115.1660714539695;
        Tue, 16 Aug 2022 22:35:39 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1b1c:14b7:109b:ed76? (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id v18-20020ac258f2000000b0048b26d4bb64sm1579335lfo.40.2022.08.16.22.35.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 22:35:39 -0700 (PDT)
Message-ID: <786f0f8e-7f7c-2015-dd78-b2961b715d66@linaro.org>
Date:   Wed, 17 Aug 2022 08:35:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2] dt-bindings: pinctrl: mt8186: Fix 'reg-names' for
 pinctrl nodes
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>,
        Guodong Liu <guodong.liu@mediatek.com>
References: <20220817052615.27153-1-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817052615.27153-1-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 08:26, Allen-KH Cheng wrote:
> The mt8186 contains 8 GPIO physical address bases that correspond to
> the 'reg-names' of the pinctrl driver. The 'reg-names' entries in
> bindings are ordered incorrectly, though. The system crashes due of an
> erroneous address when the regulator initializes.
> 
> We fix the 'reg-names' for the pinctrl nodes and the pinctrl-mt8186
> example in bindings.
> 
> Fixes: 338e953f1bd1 ("dt-bindings: pinctrl: mt8186: add pinctrl file and binding document")
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> Signed-off-by: Guodong Liu <guodong.liu@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
