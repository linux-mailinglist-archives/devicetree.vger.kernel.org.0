Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDF4B430A18
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 17:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241982AbhJQPdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 11:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343994AbhJQPdc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 11:33:32 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFEDFC061765
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:22 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id g62-20020a9d2dc4000000b0054752cfbc59so292853otb.1
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 08:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Pdfxl08R50FUxj15vHacy76BnG7Q2+qxHwmjL8wNFa8=;
        b=e8xfmuFTGzzWvk2s4MZtX/k7AM503RG5Z2G+V3tpGEzp3/1OrRjHYhadwQADG+vteB
         MEEBil49Sq9doAKNdlG8U1JX4PHjs1nLYuk1NNZNVr2Sr5sgO1YmUQKm4nB8TVn/jAH5
         9xY3QOX9PSfrafeBm0NChxuq4G6JLhnhnGqYKmi92hFC7geIgVNXibgyRlxK35nZwVGK
         1n6RJYsgdpbpJ6mnaDJYe2WanSo734OC95XcZdGT2FzKww8q+WHayE+uCgI464eGDNi4
         nEi4E/sLifnFKKLVin1B/PYhNOgF4j9QawwmifnTWVLs8zOPEGST03M1scrJn4BklwwS
         K01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Pdfxl08R50FUxj15vHacy76BnG7Q2+qxHwmjL8wNFa8=;
        b=yiSkTdnDeHcDXGvz7LpinQb5ax2sjh9g8cX0OIqAWkGURolmaSKVPjRNt509hblsH9
         oJQN33KLf8fDpzyFmofYgV0FAF0LM4q76TcMBE9uG/JX6YByNM7WLBITGChMZnRsvdw3
         0ENsWVqRgojl4mSOJ9VcjV3LMcUs3qnGGtBP6Xn6dpZMvonG9C6WPT5ufpUee01+anU2
         z0RX3Vvy6QSwq+qRIupZS9/+pgqH6714eW2Wy5Eo8quaIx8+tl7tTv87PxNVHnhAdXCE
         4pkOnsIY8ASwndN1brDIWbmsKoMO3nolSYLLdCKoRG9vkFHkMFe05FqIoalp6pj8gKk5
         MjLg==
X-Gm-Message-State: AOAM531tzt8P4EqGYDk5lfgyqWdPWURUmiOi5lqnSHylY8/TMJQmaNhX
        0Ywbki1Y2KOPVH52f0Ojn4ioMJF2QyKhHg==
X-Google-Smtp-Source: ABdhPJxz5Dh10GZUKWLZb20/3NIOGggcoAo0ZvmjOCgMaVaoghwfLPkD34uOMBhs95OfNi5p/2fEfQ==
X-Received: by 2002:a05:6830:1f5c:: with SMTP id u28mr17436518oth.3.1634484682162;
        Sun, 17 Oct 2021 08:31:22 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id x6sm2565698otp.49.2021.10.17.08.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 08:31:21 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org,
        Deepak Kumar Singh <deesin@codeaurora.org>,
        Chris Lew <clew@codeaurora.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 4/4] arm64: dts: qcom: sdm845: Drop standalone smem node
Date:   Sun, 17 Oct 2021 10:31:07 -0500
Message-Id: <163448466184.410927.876599658454575045.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210930182111.57353-5-bjorn.andersson@linaro.org>
References: <20210930182111.57353-1-bjorn.andersson@linaro.org> <20210930182111.57353-5-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Sep 2021 11:21:11 -0700, Bjorn Andersson wrote:
> Now that the SMEM binding and driver allows the SMEM node to be
> described in the reserved-memory region directly, move the compatible
> and hwlock properties to the reserved-memory node and drop the
> standadlone node.
> 
> 

Applied, thanks!

[4/4] arm64: dts: qcom: sdm845: Drop standalone smem node
      commit: 622adb84b3e7c48a888c3df26fbf28679ded660b

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
