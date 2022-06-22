Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D202D554734
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352917AbiFVI33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 04:29:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355340AbiFVI2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 04:28:54 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BC822F0
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:27:53 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id j24so1574758wrb.11
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=XbgDErLagFHBfyb+CoiyYz9Zf6oTh91aTLuqAzAxSik=;
        b=ZQJfJ5UqGjh5D5iVCOckdHigo+dLoWR1/c+jWBUAAZJuYVoRXMRSNBVJOWBu3fKTOD
         bRDmJitbGc25rmKnHFTaeJt6/hqbiLhPeslxSUnFGDJ/xd6YkNkeUOcAg83j2NGeC/Ux
         69wtJ3w51Thm3cmsKXs9NToK/U8R3tlpofFGBqISRdl7XonRf0EUq64VbFSBpU/VzIFe
         w8n0lyc2bskw9KrfbHzz0/zVnCwueTX/Zcz7aDa6rN/zUZoRf9rtR+ZfWBLhJJWt6Ol9
         wHo8ogMrZe644CSG+d+ur9U7bzw/s4HVOhC3602cMQZgCPjw4VHuw2Feiz9bH4lR3N5e
         Kjjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XbgDErLagFHBfyb+CoiyYz9Zf6oTh91aTLuqAzAxSik=;
        b=D7JxgG1eh8ooRLNn3qWYgNc+ZQyT+hV4bUDle93SmoB2M32Y6MRrilTuEeNUJr6S3l
         +N1eTpBxpMMKAGLonZPuM7xCX6lyIUa0qn607TWWx0Uxb21iAyDUuKaspWb3X//PCQTd
         BkVjwJCz31L7+QuHlUmxdo6Ee+D1qpjA1TK/5PIUltXSTPuUCOLj0P1P6Fq6mdzMX4SZ
         4FackCA0Me8LJReFZdVFjLVsCLvU+Q4Uh9cS7nj99uuc0RQ1xRj3ab0hlp9Y+Mzwaio/
         OOVMQRFmnnBWQN19z5g8O9k7Usy9aKmt0z5rL3vxZ+vPXbqxgTeKb8d4+DibwcIsEo0t
         PHYQ==
X-Gm-Message-State: AJIora8zGpb1H1YssC5g+JZwnH/q8R6/dUFXUxDckbaZW64wcvyyOQdS
        Zrt/xHzKhIRmx2a+aMhsD1hdOw==
X-Google-Smtp-Source: AGRyM1s6S4hxjBn6ez5yIB+aaZ/mVT2kAIq/UqWiLzgyvn8RMF/CmAhJU0JlQUVZSD/uYqdHwTTYSw==
X-Received: by 2002:adf:fd4a:0:b0:21a:3cc1:a887 with SMTP id h10-20020adffd4a000000b0021a3cc1a887mr2071774wrs.439.1655886471296;
        Wed, 22 Jun 2022 01:27:51 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c3b8900b0039c5b9e9142sm21408696wms.17.2022.06.22.01.27.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 01:27:50 -0700 (PDT)
Message-ID: <e5a7367b-af35-b382-0f2a-e68fe07a4123@linaro.org>
Date:   Wed, 22 Jun 2022 10:27:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 4/5] dt-bindings: arm: qcom: Add / fix sc7280 board
 bindings
Content-Language: en-US
To:     Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        patches@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        Julius Werner <jwerner@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        devicetree@vger.kernel.org, Stephen Boyd <sboyd@codeaurora.org>,
        linux-kernel@vger.kernel.org
References: <20220520143502.v4.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
 <20220520143502.v4.4.I1318c1ae2ce55ade1d092fc21df846360b15c560@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520143502.v4.4.I1318c1ae2ce55ade1d092fc21df846360b15c560@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 23:38, Douglas Anderson wrote:
> This copy-pastes compatibles from sc7280-based boards from the device
> trees to the yaml file. It also fixes the CRD/IDP bindings which had
> gotten stale.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> It should be noted that these match the sc7280 boards as of the top of
> the "for-next" branch of the tree
> git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
> 
> (no changes since v2)
> 
> Changes in v2:
> - Use a "description" instead of a comment for each item.

What's the plan for these patches? This is one was reviewed, the 5/5 had
comments. Is there going to be resend or pick up?

Some other folks work depends on this.

Best regards,
Krzysztof
