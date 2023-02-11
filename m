Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27369693074
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 12:43:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbjBKLn0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 06:43:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbjBKLnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 06:43:25 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B98C730B27
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:43:23 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id z13so5640202wmp.2
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/DCKqOexRI3O4ht4IS85fL/oFtzuchagyfeetw+irug=;
        b=WYaqol5YRHI3e0Vn3Z+9KAVjVdMHXfIg1M4GlmubP9ZgKKqhOagaxURnYhbYpYuYE0
         DcL++cqnHMnMYUCjgKPWFW2SkFCLIBxVaWOpiJ+bLrJcnbpb2wtYmTHAdOdA8aJ/+6Au
         ZcOkYrh0Gadi9V2R/zp4DOCtTBmgMJdyM8UdiPHL0VCdWJQ428DV0ajanB0wyF/kWidn
         yS6XphvKFDqq5eif7lGeKqTzOMHUZiPrVGrRNdmF+iQuy89/jNXNCMjrg2e9RVN1Ag5N
         pmNyEE/9DknCIKaeXBQGWu6DeR38EL6nsw/svb+Wb5vm3xf51figutCJEepS56bzebIf
         HUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/DCKqOexRI3O4ht4IS85fL/oFtzuchagyfeetw+irug=;
        b=m+/bQ3ybphDDECbqKTjH8xb30oneW/A6vuelMPZyhLRqrYRjuflSaFRqdRjwS4Xx0U
         TyQcJscVuCp7q14V4eeBoiHliqvuxkfhJWIfF6t5cPkDu6Xj108p5AqOGsne+4SjUB5+
         62a8CkOZtIdLum+ROlEkkUjfrJpEtDz/Le5X4OHx+yg/7GRrvuozIjybCsAofQYiwaHJ
         ACbDiV2Wb8xnrtFymHd1gPQ2F8drhYzYI5UqYVhIkTOM+Tx7FsQv+vnvTxKbG0xg2529
         tqlcnXIKsosLCNdXox59ea8UOjbhWE9kd3zMoh/151fEppYRqVc2vQyJPhRYydSKwQ/q
         DDKA==
X-Gm-Message-State: AO0yUKUdo+qSJAOEJlQRtUOWdAhdWOt0/l6wW+FAfYo1OswpeyT5+9+/
        9Zwt0tOMXSpM442kVsihFcSKhA==
X-Google-Smtp-Source: AK7set8gLZFxagvPf5Ty9wYtB3SAt073izJzB3ZgZyJJvf7DyyWks7C13vpcZzOH4awrHMb0Imok3Q==
X-Received: by 2002:a05:600c:1613:b0:3dc:46e8:982 with SMTP id m19-20020a05600c161300b003dc46e80982mr14763815wmn.19.1676115802293;
        Sat, 11 Feb 2023 03:43:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m18-20020a7bcb92000000b003c6bbe910fdsm10954145wmi.9.2023.02.11.03.43.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 03:43:21 -0800 (PST)
Message-ID: <01dd6540-bd64-5a1a-a530-76738181d595@linaro.org>
Date:   Sat, 11 Feb 2023 12:43:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/5] dt-bindings: arm64: dts: mediatek: Add rev5-sku2 of
 hayato
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
References: <20230211002626.454844-1-nfraprado@collabora.com>
 <20230211002626.454844-2-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230211002626.454844-2-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2023 01:26, Nícolas F. R. A. Prado wrote:
> Add binding for newer version of Google Hayato: rev5-sku2.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

