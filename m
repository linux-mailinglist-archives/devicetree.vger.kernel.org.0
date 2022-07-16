Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93563576FD5
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 17:20:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232095AbiGPPTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 11:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232023AbiGPPTg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 11:19:36 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B8521EEF4
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:23 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id cb12-20020a056830618c00b00616b871cef3so5650551otb.5
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=R/UueaEf1vLdPjv6auaq+z9nugKLIR3aNpBjzrCoSB8=;
        b=A2HL/Re8Hblc3U9rb5o0T7vPAZLeUoODx0fX+jle67OomyC1jWWXzOahR+kvTGiogr
         FLkU2YwxTOudc/t+plkAb9bJXbKF+E39tn5NyIF6Wp14ijGpTgXQtilblW7AGdt0KOqO
         Nlz7x4L4HqYlW+Qlj245LYOFj9ZETCAILyEbuvAuPEY8f/ZPMGPF5AYP/FOBnGevV+uz
         AHix+dJCcxVP6j4qVSA1IS8Dpg7Ru8T2dcRLUOq6INJ6amcdt7INY9v1XiWodfPfnblZ
         hZWNt9KVTm61AWqBjm0FhREzlofpGaGX1VKp0xzrMPgsn1rrFtXb6kDSuRmQdT5Q8ek0
         aSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R/UueaEf1vLdPjv6auaq+z9nugKLIR3aNpBjzrCoSB8=;
        b=bupXt5x1mG16wDUD+A5EsuNlHQah5y4Lab3Xn5oPxnkS7wrMkoCWlYpzDFdFGzi3LC
         26fj6OJNmOAPr2Chg3/DcQp9TJcHPkXY7NfENVtLk4r3XebAU4o8kM0ZsGSNbs3uMelq
         l9mjaVqRCkBiqP9YTe4dEB0sWMzajvZEYnkh4zxn9kIPhDcuRK5SFXqr3vsgRAajEXRT
         ZGxf5VFvgaoLOw54Ab0YrnxjWD0APnVzBMkB7MLdFr2TtVDQtcVnjJmA3Yn520+rNX5J
         P+a5A4oML8l+xzO6UDAbdnMkVCAy/tBahcmy1hnr4orBX1nLJlNYKL3/n1ciJbULyloi
         AwVA==
X-Gm-Message-State: AJIora/wLMTHJgbuz9rVEHpD7ZJmc6PJ6tdmqKgtjT5RkOan6Yry73O0
        0IxspI46tLmwfrjubkh7m9pOpQ==
X-Google-Smtp-Source: AGRyM1up2QLb5YL2NJuU194Bx+bJzaXp6UMhmyDLRk9f50V9R+NDtlwcpNLKrbS2wjdYwgXh8rXdUg==
X-Received: by 2002:a9d:6b06:0:b0:61c:1ac5:15b7 with SMTP id g6-20020a9d6b06000000b0061c1ac515b7mr7666943otp.123.1657984761620;
        Sat, 16 Jul 2022 08:19:21 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m21-20020a4ad515000000b00425beedad70sm3035254oos.32.2022.07.16.08.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 08:19:21 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, dianders@chromium.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        devicetree@vger.kernel.org, srinivas.kandagatla@linaro.org,
        agross@kernel.org, swboyd@chromium.org, quic_rohkumar@quicinc.com,
        judyhsiao@chromium.org
Subject: Re: (subset) [PATCH v2] arm64: dts: qcom: sc7280: Move wcd specific pin conf to common file
Date:   Sat, 16 Jul 2022 10:19:04 -0500
Message-Id: <165798474063.1679948.8019942252152048176.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1657197381-1271-1-git-send-email-quic_srivasam@quicinc.com>
References: <1657197381-1271-1-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 7 Jul 2022 18:06:21 +0530, Srinivasa Rao Mandadapu wrote:
> Move wcd specific pin conf to common file to support various
> herbronie variant boards and to avoid duplicate nodes in dts files.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Move wcd specific pin conf to common file
      commit: 49ac5e0c3078012480749102dd3f405770a0e281

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
