Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E23244FA981
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 18:30:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242600AbiDIQb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 12:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242597AbiDIQb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 12:31:28 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 320C619BE6D
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 09:29:20 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id r3so3772531edi.8
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 09:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=013KQyZoC1kiZK8acrvQDTsvOmSOuQ5IBcDI4parlh4=;
        b=yRLY31N37VK2cj40RKzRn4+6jDccfmifkjJE0UtauU4xkiKlwJatKyqvpuf9zcyk99
         1HxMksrcfB3cF0MZ/9jQazdY+jqCsLCOGJw+X6rTvWrZveibmeqQuLja+LFPoMZHJchL
         dNqjc4m/hmCCjTeS5PCVAYThu/vRzu9iOFOWoojX+bZoay1vK2wnaPE77qL2ML0W996L
         dfxWcptyWqo7jrhuTrl9/n+Kq7N3G6efYjeZ6N8bYrI+qVnUonDQPl81jSnDgRlPsl3i
         YGSXAEmXdgZoq+Cq2MYipbejX8LZbtU+tNRWgLrUWJPciF1xtwiclBJKiLo5qpenLRDw
         HgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=013KQyZoC1kiZK8acrvQDTsvOmSOuQ5IBcDI4parlh4=;
        b=gq2/EJgbQgG6Y5I/yYD7D3GTjLI9ei71YeMY4cUgfYfD+z9tener51O+vyb0F2yPo4
         jFO3kg4ac+B8TS2nvLQja6zRQ3N4DuIdFwfeuJHSEFA6WtlyC2VSno+ohjSPMwbGfgX4
         PirNZNvG0sNj4/B3n+RM8sEpB1tKHtGoa0gkJIfSjvdPxgQrPeP21wV6F8jnGGjSf07i
         R83/Au9FtZS2Ku11cLt4MyBvsr0dTht53fRVBwAA1u055ZIshWBg91XLhn9T+qEC7tdt
         j/efePdZ9u22qhS/w+GSHZI0OZ5WYep/Odpicz67I7+Jbjm41lAmapnYIzgmo2670F5s
         Oayw==
X-Gm-Message-State: AOAM531gki4fIMsXbBZAToiobjRROhqY1CPe7j2IyCAGaECKelhCfjjN
        /UeSFuLh/C+ff+C7skKR5S/0TQ==
X-Google-Smtp-Source: ABdhPJzQFbm5lCSBjckKBhmk/0GHd3D233fa4uyGyQrZQ8dNln3xQBzO5NCowNNtBZahuYgMrlTpkw==
X-Received: by 2002:a05:6402:2554:b0:41d:79:945f with SMTP id l20-20020a056402255400b0041d0079945fmr15417239edb.120.1649521758824;
        Sat, 09 Apr 2022 09:29:18 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id f26-20020a170906825a00b006e7efc52be8sm6865768ejx.166.2022.04.09.09.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Apr 2022 09:29:18 -0700 (PDT)
Message-ID: <c63f7e1c-b40f-474b-507f-86d214048a5b@linaro.org>
Date:   Sat, 9 Apr 2022 18:29:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display: msm: Add optional resets
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220408210253.581337-1-bjorn.andersson@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220408210253.581337-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 23:02, Bjorn Andersson wrote:
> Add an optional reference to the MDSS_CORE reset, which when specified
> can be used by the implementation to reset the hardware blocks.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v2:
> - None
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
