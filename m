Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8355B3E54B5
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 09:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237993AbhHJH7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 03:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237682AbhHJH7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 03:59:08 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85BACC0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:58:46 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b11so8866702wrx.6
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8vOzxNlu5NfLvXqdFSx19sPlss9NRbVfvd1D3cx6Wlo=;
        b=hCUQnUYlqyla8ODWNsANP5xwr5ntXLwRwywWNiKydMuoOL0e2F3Cm0hqWTXd2V7zGW
         dTRfn5vTX5cMZrElr+63h2Yvbj0H6vMbSeM7WMwUPEaigXYi08ZQxnvNgfIzR/CuMDu2
         HcTuWCplm7yot7wO9dqvfDjQu3KTSZpm2/JDlH2TraZCJ4N2POkwTWYp2PHmjI9VMF4T
         wjTNGuZ1oLtdl3D37DNAHngAVw5b9qskMeLefCqPz9Rp9m4d/q1jXBasNnKpnTYlkJeO
         iWmhhDMVNsHzoi5cxAqDnh5DogF6ryDrORqpDBUgGnTf55HhVErXOxjVX5s1tvxy+SxB
         CPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8vOzxNlu5NfLvXqdFSx19sPlss9NRbVfvd1D3cx6Wlo=;
        b=BR3HMhHcXMNKl4h5kb5cQ2M+Fy+A60dp3cASe4anVPe8HogYlmkENw3aZ9jAqXU1A5
         EDOjjziosGvv7NSclHT6LAMI6mp0qSGXDUMWtMFM1QqFccj2zouz1NK6kO0r1TjOCMYx
         Tp+7YOjLK9C/mZmt7iSNRS2MRDTCpXgd32oZ19CbiYXeYCUfBbRrBO1rC10xbeHBast0
         hjg/70B+BAM2aB/2pfkSbOvmOxsb3+BrUp2XeBtjzNqmbeeYeVbGvsEIRN1W+aO6hUbc
         ScwT0GIdr2cCqs5tiwhdF/xQhEHTA4MmMewBOa1zvKXVrExlyO0NNMc9+q9rWVAwuwkc
         gb+g==
X-Gm-Message-State: AOAM5327Y+YvQ8NCH10E8UESLX7il6z0W6zLF+eg9QjMM03kTjP23eRp
        07Aj2Ete63vwxpAQ59tgQvQSWg==
X-Google-Smtp-Source: ABdhPJz1UdCSUcy7AiFkdb/onnCvFYJbCuqHXA45ykrkxib/zGQ+1SGggLyKGKHSaSIyEZ7STNj34g==
X-Received: by 2002:a5d:64ce:: with SMTP id f14mr29390738wri.17.1628582325021;
        Tue, 10 Aug 2021 00:58:45 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:b710:2b6e:27aa:f0a0])
        by smtp.gmail.com with ESMTPSA id d5sm22175380wre.77.2021.08.10.00.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 00:58:44 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     linux-amlogic@lists.infradead.org,
        Christian Hewitt <christianshewitt@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson: add audio playback to nexbox-a1
Date:   Tue, 10 Aug 2021 09:58:34 +0200
Message-Id: <162858223387.1486110.3448385617438726477.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210804140029.4445-1-christianshewitt@gmail.com>
References: <20210804140029.4445-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 4 Aug 2021 14:00:29 +0000, Christian Hewitt wrote:
> Add initial support limited to HDMI i2s and SPDIF (LPCM).

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.15/dt64)

[1/1] arm64: dts: meson: add audio playback to nexbox-a1
      https://git.kernel.org/amlogic/c/c7f5675b345224f212a0006c73a643182e953a5f

-- 
Neil
