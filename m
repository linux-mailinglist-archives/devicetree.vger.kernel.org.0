Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF466525DF5
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378475AbiEMInk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:43:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378471AbiEMIn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:43:27 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91EDA27E3FA
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:43:25 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id u3so10485817wrg.3
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=AXzBkgOIzsI5oEa0R5RmaxZKaaGiIzhSFzg3r0GIbOc=;
        b=nk4F59btZaMgTDLIGi4zEvXVHuy/BRsWuunF0Efn1KMK54NQ18YyrilhqoPx7jkFLu
         N749EBSnqhuAIZSzAk0Y/x+GKvPGqSqIepoBsV7W+463zmjc39QFS5itim+u8hqimccJ
         xkLZ4aJaOc9aGVlGszbbgEEE/X7lvvVvKK10wLxfzzAInBxmFTCnYa3TBv9ZaYQyBsMS
         cGy3ZUYhL27Rg2v/50HqI+vviAAdnni+ZlhwAQJKfu1fKWPMPjHCITS5MlF2PFOPkQ/h
         GYGkP5qdXKSQjdZKabEj7w6ziGwox8H8JED4+jSlgzK8O3BkIXcLok715ZnUHqmV45jL
         Wxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AXzBkgOIzsI5oEa0R5RmaxZKaaGiIzhSFzg3r0GIbOc=;
        b=xQ2ylL1NRZwh35laXlynGe3fGKJ4r//kM3crMCpIwqcnjLNzps0FDxR1CvwET1QQ/M
         aIF6X1MOxVkXNiMdorktnBGDkaCQGJkHYfzCiXesp6maIci21VmKX06JaUsKQT62hfhg
         MJWG83VsKco2JXRQkoVyR/R7VCcCIakf8TGdlM3EaGhsjchpfkEJvSjKF7UoIKquhP8g
         gzPSZEUaFUQLl9WQSDdlCWlL77jWh1qboeYx5QgR4d5jqkfuxAYwkozKe0jB7yMD5TTP
         OBuY5AVS//NjZJjBNKcWMprvC1YkyqSzvrxAgAEAVDQYCO6DQJMhhcXXlz30tTVBYQCs
         M82Q==
X-Gm-Message-State: AOAM531oQTWfPuxnrDtI5w+b8PLLV3ejx/u9tFWXjajNFtoQKfzJt81F
        JvBTFW4HsMAUrSI7QCpum8xAxw==
X-Google-Smtp-Source: ABdhPJxJkGR9lQ6LfRBhOofaSSj87mK7S1i7LmyjNYF6/yHIXEcgRKezKiH8jbkheoxc9gvlQqGM6g==
X-Received: by 2002:a05:6000:1f0e:b0:20c:4fde:7e20 with SMTP id bv14-20020a0560001f0e00b0020c4fde7e20mr2936280wrb.532.1652431404146;
        Fri, 13 May 2022 01:43:24 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c2b8600b00395cf2c55d5sm1288993wmc.42.2022.05.13.01.43.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:43:23 -0700 (PDT)
Message-ID: <c8c420ae-8d11-9add-876e-a3ace3b03398@linaro.org>
Date:   Fri, 13 May 2022 10:43:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 04/11] arm64: dts: marvell: uDPU: add missing SoC
 compatible
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        kostap@marvell.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220512124905.49979-1-robert.marko@sartura.hr>
 <20220512124905.49979-4-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512124905.49979-4-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 14:48, Robert Marko wrote:
> According to the bindings, all boards using Armada 37xx SoC-s must have
> "marvell,armada3710" compatible while 3720 based ones should also have
> "marvell,armada3720" before it.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
