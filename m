Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D127E691E11
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 12:19:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232378AbjBJLTC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 06:19:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232446AbjBJLSu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 06:18:50 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08E2772DC2
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 03:18:43 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so6046157wma.1
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 03:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YNguOISCUKyBqu3Vsrve2syBThLkw/em0maQuviG9dI=;
        b=ZVqb+fcwLg1CQ2EPanYWO3Z6yMVjfNdSv0AQ9XXLu9iX2/PYsRKmZmOLGTbphOcaNW
         AmkM0bHyfKGUkNVXxFXSzCYLobum0bI/v33WOa2UI08vuItuF6WhE0M0NfaZ1oG6rfks
         xRjdGyofQ7+Ws8R5rhsAuoB2so4o/jjyoRm1odcGsKoqLcfgwR3jTewLFHAQBaRHIyTS
         6yv3Sff4z18KNBQX0Kr7was3eaSiyLg4o2p1v7ERuj/C2moFInA62gqRqBN2YbS42tWL
         2fU3OYo0oMKXMA10wTImaNwRs0Ji5RiOaAaBllu+P7qHk4VksF8SeHW+nnwIeCX85D6G
         K7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YNguOISCUKyBqu3Vsrve2syBThLkw/em0maQuviG9dI=;
        b=V8G73y8UWlKxo8kqD1AD/CMtzGlGsaBtBb+7rNWlTsYKKsF1uVHyM0LVcjvON45rpN
         cKFIe+n1i6AQxqdve77s3BjL6l1qocCvsyAtH1SBFsZWZex+Qmdg6tGTM2LW3PbWPtZT
         0WKZcA9k9ZyUIghbDFWUXGL9zz7EUgHHBlxTq3Vt2CDbbcgVtTvl3vjOJ/MCUSKd4pSC
         231RnqiEchJNZ6eycwqqLfCK5Tz94mjaQufNoiv0Zfi4Qk997wsr7nkR+stpLZkOPEbl
         7m0CALAkBOwpb9+R3bgpxGo3D8TAa5IDsx8sGCQ52O8XWjLzM4mHnphSJ6KMoCtpsSh+
         OluA==
X-Gm-Message-State: AO0yUKXRIT81wKPeZB20eiL2qkJpVkOi9jUPmgxotDQzYpzUPWzQO3mQ
        oGXdfAuJSdBix2uwAitQnkTS7Q==
X-Google-Smtp-Source: AK7set8o/gLbKXlzPH7KTDSVRFPog5UfdhUGt/U6ANOSxDva+Eg9HpkDQgfFQUfHt3tcTXGJVdfCyg==
X-Received: by 2002:a05:600c:4488:b0:3dc:572f:edb7 with SMTP id e8-20020a05600c448800b003dc572fedb7mr1885297wmo.1.1676027922526;
        Fri, 10 Feb 2023 03:18:42 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h12-20020adff4cc000000b002be505ab59asm3439709wrp.97.2023.02.10.03.18.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 03:18:42 -0800 (PST)
Message-ID: <0416d7be-3dde-eb22-c129-914367cff7c2@linaro.org>
Date:   Fri, 10 Feb 2023 12:18:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 7/8] arm64: dts: qcom: sc7280: Modify lpasscc node name
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        broonie@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_rohkumar@quicinc.com, srinivas.kandagatla@linaro.org,
        dianders@chromium.org, swboyd@chromium.org, judyhsiao@chromium.org,
        alsa-devel@alsa-project.org, quic_rjendra@quicinc.com,
        konrad.dybcio@somainline.org, mka@chromium.org,
        quic_mohs@quicinc.com
References: <1675700201-12890-1-git-send-email-quic_srivasam@quicinc.com>
 <1675700201-12890-8-git-send-email-quic_srivasam@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1675700201-12890-8-git-send-email-quic_srivasam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 17:16, Srinivasa Rao Mandadapu wrote:
> Modify lpasscc clock controller node name to generic name,
> that is from lpasscc to clock-controller.


Cleanups and fixes are first patches. Or even independent patchsets...

Best regards,
Krzysztof

