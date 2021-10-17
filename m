Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4192430A30
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 17:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344070AbhJQPdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 11:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344072AbhJQPdl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 11:33:41 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E721C061769
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:32 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id o26-20020a4abe9a000000b002b74bffdef0so1153271oop.12
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tO6MichDD8luBlR80IxGFobOEC0IpUVT/XNhYJWAzIk=;
        b=HwgMkXYNp7OPQ2eT4M9Be8YokJbfy96hc4scVtYbrJVAsbauoWBrFVoxZDEUDBi4Ke
         ybtEEtC94+IMZVPVPYEYLFn1HSLt/OUxBoVMxBw0OYoNckbXSc3W3jAQ4mka6FuRlcK8
         Sr0H6wpWWQt6YvIw+kHkAVhtVj9NiZByeaJgBDxzJwgdz+lTnYFGTl40xUVVKrmbzJ7S
         N1esq5i2LajxuFZsSvJNlPYa7QPuDqJWTq2X5wMDAW6qPZyrdabxli+4AdHU8lEwc7Bp
         Ql916WXQcfNNCaeiKgQQ/NSNWUJ+0qBbueGAuYeoz7fXzNlaKRFvHa72qfGRLQqHBqwH
         +FOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tO6MichDD8luBlR80IxGFobOEC0IpUVT/XNhYJWAzIk=;
        b=IzKBr9Y4tYOrphJtVFvZUceBu22QhcLeIINY2UEwE0Zsbh/jWRokcpUi0HLQhJ/RTe
         WBecgOU5B2YqYObObjoxE/0Xze34QnVbI8kDOJ5mjWayltaLsRywToMhB9dTm57lNRL2
         nE8DfOw5M/opSta9dGOs4GiO0PIVis6W5DmVifaMbap938br/flNOvxq6VvAME1go9x8
         DcP+U3lleVBBNYzMw6cmgzuql0vxgXxFuS5OKTeCEANW+o2OtUCcloVdhwoGHrfUt4BH
         vQePvTN26o7JabLTp6fJmQq8IV8GwGFmasJoflyzn2uCun57mz2JC1lbBot4yunGhWwu
         5Lvw==
X-Gm-Message-State: AOAM533Fl6b9m/lB9afrERf3f/n62pZPC9MigkGbfva/8SdxEPOwkNZq
        1muuHMMKwoc4XX8JandFmLLZOg==
X-Google-Smtp-Source: ABdhPJyqJWedc6vIl6YyzSiGT42B/O7u4qJ6yP40IfQv5aNSn6Gs2iBRxpBtXtEpisVHuKLON2Cy7w==
X-Received: by 2002:a05:6820:13c:: with SMTP id i28mr17729665ood.65.1634484691676;
        Sun, 17 Oct 2021 08:31:31 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x6sm2565698otp.49.2021.10.17.08.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 08:31:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH 2/3] arm64: dts: qcom: msm8916: Drop underscore in node name
Date:   Sun, 17 Oct 2021 10:31:17 -0500
Message-Id: <163448466184.410927.2130646973121121096.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210921152120.6710-2-stephan@gerhold.net>
References: <20210921152120.6710-1-stephan@gerhold.net> <20210921152120.6710-2-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Sep 2021 17:21:19 +0200, Stephan Gerhold wrote:
> Using underscores in device tree nodes is not very common.
> Additionally, the _region suffix in "smem_region@..." is not really
> useful since it's obvious that it describes a reserved memory region.
> 
> 

Applied, thanks!

[2/3] arm64: dts: qcom: msm8916: Drop underscore in node name
      commit: 9095d054851f73d0f3527f9d822f92673007df1e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
