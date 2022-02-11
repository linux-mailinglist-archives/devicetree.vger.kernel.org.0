Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 686254B1AD0
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 01:59:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346612AbiBKA6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 19:58:02 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346604AbiBKA6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 19:58:01 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5B5410AA
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 16:58:01 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id x193so8008044oix.0
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 16:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RIcE6EmL7kT/dbMWMgTFXFCKl5OtURzfiDQZ4YFPwds=;
        b=c0nucwE2xmQBr21axX4FFbLOpIRgjRGCMcnOmviW8SfXcV0MIYgerZvSMw00UtcUH+
         DKwVSXzc7bHC9eabpjlOR3YafNwlzMeeCuYqW4DIhsHwQ9PNt/ySayGQFJgtNBp8Qllf
         k6V5MaLIgQ0883h0v5quCPZlC0P+ezMHFqHkHZpE1itBoZHWIh8j5zypSwlJy1yNbnhw
         XSU+b0LcSH29qyCwFH7xpmPC5qOwV2H2CQN6FNU5c5buVTL1MddVLuE4JMfqm59rUTIn
         YTMNb/kllBxb6C+V3PmUlye9yRUevUeg9pyHcYToARwvGhajpfV6yWN0/ETyo9xE6bUs
         2iBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RIcE6EmL7kT/dbMWMgTFXFCKl5OtURzfiDQZ4YFPwds=;
        b=J9JHbU3lltROLDXNafBp1dSlC9ZZzBw/VlpDCU86sUxPRhPVu+FBsNbzFhX8nAvIJx
         TqtXKunsoFVHmqLCjuWWCRDCveuOCn7o8NkU0V2Vjn9QFPzv0MbtZUv5yn7PGh5WXQAf
         KqJ8inRPaWpf3kIAbeOPdHsuH0bqhdiv5v79SKyWin2oLA5uXn4mzSGc3hTPFpi4S9Dh
         CcVVRWRo1Jid+CxU94noQ78LthVFN3H2k9pKkkHjIeOlQdNKZL6wNpXsCVU2qYfS5gwa
         qKT6WSwAWvKO4kJ2YrRXeUFqM3B0VXCASCR4QHDUQHXVS4yzhXhYZVT6+8ze7+n5MNP0
         sYtg==
X-Gm-Message-State: AOAM530r0FXpwAg2ybMxYhoKUApeXAZbrxTDpC7dmkI+kSqYrcmVUq4h
        8fruMdJqXAtLUEJ/A70GYMVXuQ==
X-Google-Smtp-Source: ABdhPJzt0YDFqxhTffnmhdr/b/vh0d8iWDbPSGBr8z41W2djZIWe6uU1n0Gw1hxK2wnNZATT9yiNLA==
X-Received: by 2002:a05:6808:1058:: with SMTP id c24mr27497oih.257.1644541081190;
        Thu, 10 Feb 2022 16:58:01 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id n9sm8331308otf.9.2022.02.10.16.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Feb 2022 16:58:00 -0800 (PST)
Date:   Thu, 10 Feb 2022 18:57:58 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
Subject: Re: [PATCH V5 4/6] regulator: Add a regulator driver for the PM8008
 PMIC
Message-ID: <YgW0ltMKjGZH4NrZ@builder.lan>
References: <1644331940-18986-1-git-send-email-quic_c_skakit@quicinc.com>
 <1644331940-18986-5-git-send-email-quic_c_skakit@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1644331940-18986-5-git-send-email-quic_c_skakit@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 08 Feb 08:52 CST 2022, Satya Priya wrote:
> diff --git a/drivers/regulator/qcom-pm8008-regulator.c b/drivers/regulator/qcom-pm8008-regulator.c
[..]
> +static int pm8008_regulator_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	int id = pdev->id % PM8008_NUM_LDOS;

Why does this driver look completely different from all the other
Qualcomm regulator drivers that we already have, and why do you register
one platform_device per regulator?

The fundamental difference in design makes it hard to maintain and
you're wasting quite a bit of memory with the unnecessary
platfrom_device objects.

Regards,
Bjorn
