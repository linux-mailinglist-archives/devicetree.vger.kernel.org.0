Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD07A450164
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 10:29:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236344AbhKOJch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 04:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236726AbhKOJc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 04:32:27 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE763C061766
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:29:11 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r8so29209937wra.7
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0RKufxnEkGwvgDrdIXbzHHGgttZ8o4UlM8CnSVDJeTk=;
        b=u8dblw3+lpHAPpWi0ipUGv62e48JAFU3zYUcMhaIV1SOfuuG4SoQ5xrho8U2auArYF
         lbFVR/yY8o0+3OEOsByw+SQSqnlOCZsFswdoCuAjO8p2NDDw7S9l6xbAa77PXxMUSUrA
         FrLIV7k23OELyQIQYYib3YWEamzi4QFfj1bmgFeIoSMNcoQOkFEmjlIghgig4sUFnSgW
         6tO5DB/ye7RKa1PsKOIKEyEZYUsCa4vUCmPFEjwa2p6i2/JN7d2so9UiwmAWN6RcGRHJ
         HOIcuitriFGT67Caicyox7XZNYZwluO3EMjzo7WxESfawSvHoHaYTXhLZSGf53U58EcK
         vxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0RKufxnEkGwvgDrdIXbzHHGgttZ8o4UlM8CnSVDJeTk=;
        b=Nk3GgVfEY5DW0GXRZv20wn48pH+/T7P6rf7fSgSne3EerAurrRP+a6hljMCLeXA8L6
         a9HAVZw1nGJTe7pEvxDysiRh9FjjbzICxB1Jd91ujKymLuy9Ff+78IYeZKYz0FaeC/R/
         qcXZyQcpQoOrSCehhaU8Q0MlzxuElP0cYJIVh3znmOcF0i0nLjj0nSZMxm2i2ExQtvW4
         BZqAkExuJuPnhUcgnwKdkKRsXjJzV8nzMg5QkIoyoQTh3OEMtfl6diW80bRfXIJe6Ld8
         K89qy6QlVgHj0ZLxWRfB3/4LsMFzsUjJub7PUlydNe/5SASO7LKRYwZVXFCUytScHxcv
         BPlQ==
X-Gm-Message-State: AOAM533rKy9vm74baEnCV2tV6cLmK88huQsrWHROfH00abU0Gmp66Q1X
        b4R2DohhWk59gV7U2DCKQapkxg==
X-Google-Smtp-Source: ABdhPJxJEZECFmk9t1OoTcXPY8UZjRYEW9SutGZsotZFwtcHeKTlx+Bghir0+ZKuZYtHpdO5xCMoUw==
X-Received: by 2002:adf:f787:: with SMTP id q7mr45091526wrp.1.1636968550451;
        Mon, 15 Nov 2021 01:29:10 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:f56f:2409:301:93ad])
        by smtp.gmail.com with ESMTPSA id u2sm15871407wrs.17.2021.11.15.01.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 01:29:10 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-kernel@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/3] arm64: dts: meson: fixups for WeTek common dtsi
Date:   Mon, 15 Nov 2021 10:29:04 +0100
Message-Id: <163696851316.448838.395017402297767954.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012052522.30873-1-christianshewitt@gmail.com>
References: <20211012052522.30873-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 12 Oct 2021 05:25:19 +0000, Christian Hewitt wrote:
> Two fixes from work on u-boot support and following access to the original
> vendor schematics, plus a minor change to use revised LED bindings.
> 
> - Mark VDDIO_AO18 always-on and link hdmi-supply to fix HDMI on boot
> - Add missing GPIO binding
> - Update LED bindings
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.17/dt64)

[1/3] arm64: dts: meson-gxbb-wetek: fix HDMI in early boot
      https://git.kernel.org/amlogic/c/8182a35868db5f053111d5d9d4da8fcb3f99259d
[2/3] arm64: dts: meson-gxbb-wetek: fix missing GPIO binding
      https://git.kernel.org/amlogic/c/c019abb2feba3cbbd7cf7178f8e6499c4fa6fced
[3/3] arm64: dts: meson-gxbb-wetek: use updated LED bindings
      https://git.kernel.org/amlogic/c/1e9fc71213d784dfbd153289daf08fdfc87f32ba

-- 
Neil
