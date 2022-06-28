Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 020C955EF63
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232635AbiF1UX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbiF1UVw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:52 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18FC53D1EE
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:42 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id u9so18688267oiv.12
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kwf7QKhsDyHH90MDGkTbTlmNI8SrZ+37Blvr5GlXaPI=;
        b=y1cM8/IiHTTUC+Fc0bOyOhR+Jjg+mVNGNXSAOeAReF6523wvK8KjhIBlDcXP5aJHff
         VeNBfluxRO2oP2Xz59DdnmAQQvXHxCLkfrxWS6pChTYvW5+cZYJbrLPt++F92FZBBC/o
         4wfYALd7EVvHwQttxrPw53iOmC7mvM8Gv7KomT/WeX6xBdkt54+5zTQ2+q1hFMZBSmoB
         5PxoKXtqNh/M/KFlBABFuHZASpW/QSs1AyGEKEJfN6EyGtZIWQZh2WIA4DpEsq6mREG/
         420KYhE22vwRVU3bcFPyewysqFixPgovKtA0i2k0wMNF8FE6GliFO6HWTlqdbAA7ScgG
         iASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kwf7QKhsDyHH90MDGkTbTlmNI8SrZ+37Blvr5GlXaPI=;
        b=I+uh+gCxiOMZc4cxcGJJkxfsPbChAKpYjzUgQjA+qm7WY7yf624Tn4Cb3HElI/VclJ
         2DJYZ5qCtocrh846+GYTsJ5Isy38h/erLdS8TS3BjUMR1WFPb6oncBPI83Waq9NvLyig
         7ufYz5rlhXhGAhubSexaqzeLIllX2v+RinE47Zj6qKLfg8A19tmUu4m5HwTtH3NzG8SN
         ikWcBuqyzCWnUZRJ56mDYz4ZDNtdZddyvzE1Ae8HpHXgXE5QC2RZvNybGwRP8ORtFc3b
         R9GNNltdE0rhYL/tL8wFmIosElZjo7t6kNzykDxjkMj5PS64wlHI7aGxpxzOe2IoP6ch
         bqzA==
X-Gm-Message-State: AJIora+4/tSJsjOvl6yic5NxSbsE5ie1X76jNeFBe9LFT7y9O/bVvREV
        pCdu4KicD4bLy2bPtwFcpLu6UQ==
X-Google-Smtp-Source: AGRyM1ufg+aVItdlpRKRIptLonzc3w8TpyCDvkMzHM6RwubyuYqC7WBFbuib8PL2IXZEi3f4mqPw7g==
X-Received: by 2002:a05:6808:612:b0:335:654c:1ebd with SMTP id y18-20020a056808061200b00335654c1ebdmr879609oih.211.1656447581856;
        Tue, 28 Jun 2022 13:19:41 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:40 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     wim@linux-watchdog.org, Rohit Agarwal <quic_rohiagar@quicinc.com>,
        robh+dt@kernel.org, linux@roeck-us.net,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        manivannan.sadhasivam@linaro.org
Subject: Re: (subset) [PATCH 04/11] dt-bindings: firmware: scm: Add compatible for SDX65
Date:   Tue, 28 Jun 2022 15:19:09 -0500
Message-Id: <165644753307.10525.13757217701045870006.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1654080312-5408-5-git-send-email-quic_rohiagar@quicinc.com>
References: <1654080312-5408-1-git-send-email-quic_rohiagar@quicinc.com> <1654080312-5408-5-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 1 Jun 2022 16:15:05 +0530, Rohit Agarwal wrote:
> Add devicetree compatible for SCM present in SDX65 platform.
> 
> 

Applied, thanks!

[04/11] dt-bindings: firmware: scm: Add compatible for SDX65
        commit: 2ea6af6cc1f58f828180cf6124febbde47a10bad

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
