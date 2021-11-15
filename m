Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 011D7450516
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 14:12:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231230AbhKONO4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 08:14:56 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:47420
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231687AbhKONOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Nov 2021 08:14:33 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1224E3F19B
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 13:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636981897;
        bh=OJCA5ZvzNWjkD2Sxk8qxrrXGgiPPEZw138MIcH0bp9Q=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=PC2LXtaem23MhHl1lwRpm2jNVFAieuZ5u4VRr7mVIgem6fRQDa5NKBjlJ6CFw1wNG
         m6MnTJ1IjBrRL4WFz0zVFeBpS0lArtTox4YT6ZZOK1Q7z56xnX4QXDf/HXli73NiVD
         /f/g+2QxCv7BtDZM4H03W31PuhtXA4ghzF2dKX7KFKe0x8hGoeKJbzOaDpH1N5NxjM
         p06J6bZIBYcI+yVttmOex2+RhG4Wu7RA0OT1VEfjbWTA15GbYKnOE+lBrbI0ZeyP1V
         XpugBozpap82MESz3EZtbum/yYcheTxLlRu++gwXlySFwopYIuLivnhf88n0NIJuPG
         SBY6AljRVY3jA==
Received: by mail-lj1-f197.google.com with SMTP id p21-20020a2e9ad5000000b00219ee503efeso4121729ljj.14
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 05:11:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OJCA5ZvzNWjkD2Sxk8qxrrXGgiPPEZw138MIcH0bp9Q=;
        b=ycNd+Rw+HF9Dasum1h8NWVkmBcs1d/d22OF+tDA5LYrNGepHP3EdjUg8YrG5xA46CF
         etyiRr8LG3F6BU0LrTVMNyeBGS/Pj0eDbPraz3iNOTd+D0Pxk8ti3oQyFSWf6Figbbx8
         f6h9icFkbYB6EollKiQOwco5LbbnvU1V0rflhjFkpBmFxHkqKz7vyIju4OgejxhFRtoa
         z7RgstZZHxepVC8nt21lo/Ski2ryOdlbmuxUCp9fqQK2llkRVp5/TuXUJO4zpJDjOEER
         VsyEH2N6S73T9kPl64NypTqXTNLkRSDIhvloyjpU4wI3LhEftWVctwdWQkZJJqT081jy
         MBUg==
X-Gm-Message-State: AOAM533r5cIj7uNNYqMN9EOu+qjn2NPyhmyVUmV36rYv22gwsJWx2NhP
        oavze6MTdqb/tJHRVYxGy1yUNcUrU6K0jHk94YO9EnzdDd2xNwjJk+l9lkd7pv0urpdd4BBaM3a
        8b4Bphj6Ffr7HdD9ulGZDQXE7HElePQUQhEfsYk0=
X-Received: by 2002:a2e:a4d1:: with SMTP id p17mr37547739ljm.318.1636981896498;
        Mon, 15 Nov 2021 05:11:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxdEUnILP/yVPCQGk9Fv6GL+8+eRne9/6CM/DR8GFRq0H4eSeKiYlpJViXXIWwou1uZpuumjA==
X-Received: by 2002:a2e:a4d1:: with SMTP id p17mr37547722ljm.318.1636981896362;
        Mon, 15 Nov 2021 05:11:36 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id p21sm1411254lfa.289.2021.11.15.05.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 05:11:35 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: exynosautov9: drop samsung,ufs-shareability-reg-offset
Date:   Mon, 15 Nov 2021 14:11:31 +0100
Message-Id: <163698188786.128367.112304195355876732.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211102064826.15796-1-chanho61.park@samsung.com>
References: <CGME20211102065208epcas2p2213e346b2c37f315e73a04f511a1037c@epcas2p2.samsung.com> <20211102064826.15796-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2 Nov 2021 15:48:26 +0900, Chanho Park wrote:
> samsung,ufs-shareability-reg-offset is not necessary anymore since it
> was integrated into the second argument of samsung,sysreg.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynosautov9: drop samsung,ufs-shareability-reg-offset
      commit: 4f5d06d381badc6e16f6d54eac7ab0125e9a7168

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
