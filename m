Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82CDA4765A1
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:27:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231295AbhLOW1r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:27:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231292AbhLOW1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:27:47 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C052AC06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:46 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id o4so33726460oia.10
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N/yoIrEFbmPoAgxgu5EmeyO/fGVae4RSn3/xv4iwCIs=;
        b=O1r6E2AoIS/5gBWynfAd+lYrLmIC8ZLSMBOakMWA+ckEQ8vu5lFZadEL7wMAZKjH7u
         Pppu5tIsu3TguRlmjGSljvmMMQIq6gAIaREMMT8Q8/a9jmO1hKB9WNMmFOYzI0G3ZqdM
         My9B1Qc/caq+CBy8+gu7KFVRzJ8ZztN+gZ5G0/sAqkNSvvuApUrCGhj+rM9LdDGZQqDj
         o8tUNM8nyrp+cWDUOT6OO+KQ6lUk53cEBOXEcPyLUaOjlhlD2IEfwqLQZvSTRq/b/IX0
         KScIfDsEAOPG2k0//rcxxVEs2ZyDKUdfnjctM8xMaJUsg1unpERBWi/bA6/R5vQTfQyB
         nUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N/yoIrEFbmPoAgxgu5EmeyO/fGVae4RSn3/xv4iwCIs=;
        b=mzls/+88PbDt7iDWdHQK8s3okA1b31H/gzKot+Hdff7dvrwZQeqoYCxnhe3djVR6eo
         3aIMJhpTXQTwFLJqZAYnN0QK543tEgqf7ds62d3Pi0KxPQBtHIqgHNlArydW7vs2S2Pn
         i+5Qip8VLwj6ydxL9j/T9E93E2jnR+cgLKCWY6c3gvkQdpZ/qE+s4jI1CjZ/cVS2InGU
         P1MjVTCrzLwj2fHWMBob73exfm6R+RfWZqHHz4BNLExDQvQgubrKmTFDIE6Fj6nynfbc
         +lccCgYah3tI4046z7akGCfKC46HxR8BJjnT7C8KuGzIQ1RIN9ftgz5KWsn8kJnOZY/E
         hPcQ==
X-Gm-Message-State: AOAM530KWRuKWIgW3uORO72+Jj19QIhx6sky3qBwMjKFutc/+pkFP859
        YaP1WqmVR+mH3mgTL+9rAU75qQ==
X-Google-Smtp-Source: ABdhPJwn2mH6bmj1PE74Wca3lH4L8mfo3fMxjVooCn67/oAaAzlzVk5XK0U+GdHGcqI1Mat24WF/fg==
X-Received: by 2002:a05:6808:23cb:: with SMTP id bq11mr1847735oib.2.1639607266115;
        Wed, 15 Dec 2021 14:27:46 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:27:45 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Baruch Siach <baruch@tkos.co.il>
Cc:     linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Sricharan R <sricharan@codeaurora.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: ipq6018: Fix gpio-ranges property
Date:   Wed, 15 Dec 2021 16:27:17 -0600
Message-Id: <163960723735.3062250.3956536901240190803.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il>
References: <8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Dec 2021 09:27:10 +0200, Baruch Siach wrote:
> There must be three parameters in gpio-ranges property. Fixes this not
> very helpful error message:
> 
>   OF: /soc/pinctrl@1000000: (null) = 3 found 3
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: ipq6018: Fix gpio-ranges property
      commit: 72cb4c48a46a7cfa58eb5842c0d3672ddd5bd9ad

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
