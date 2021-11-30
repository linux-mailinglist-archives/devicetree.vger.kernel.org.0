Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92E34463161
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 11:44:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234029AbhK3KrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 05:47:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235660AbhK3KrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 05:47:20 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288A8C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:44:01 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id t9so26401823wrx.7
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/dRrW73L/+aQvawdDWHM9eDTSLKvhZrt7/ceBiWtq0Q=;
        b=2aFe8uZRO1Htx0Beqk4tImbRLvYAba/GKyjPzF6n6hAWf/GzPWblHuO4bONfs5gBAI
         zlWNhrihD3l0hMGdePAQltyWYcnaX/0vKJ4S4rDRxqbpHVF2VcQCREIhHG715y8mLE0J
         pO8O/Nt4Tz9uyKOOuwMesK94SO3J1MR3D1Io5VFucyCIbo5R6alLQ/vsRT5HZArfobc+
         4BYDrqQUKZn+Iv+HL7UZxdd4F+h5B2bELBiqa3W43Tzoe5GeLV628VhZcjboalsQZB4d
         4jIR5oHKZGiFWOUhl59rrvd3Xt68gkEtEUJC2CBnFpwjQ4G9ZN85raIPSPp6d4vU+zxG
         ZC3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/dRrW73L/+aQvawdDWHM9eDTSLKvhZrt7/ceBiWtq0Q=;
        b=6HzMlUDmRSTkHpvPxvwy99Sx1HrTywXTsSJZL6lXdOPXedl3z/cn6C6pr8Dgf8d2uX
         TljTGa/dsRA+e13I60zQrENEfQSxC9nSdXuxpflanuPJJzYgsnVm6Chvucejpk5Yc9++
         G+9y65iNXHpPVT1FF6d+uQoRwwjpIzQpKWxAWnj+Lxu/vR+n1pshkfWSxapHETOfRboA
         7oZOtoqlX3hKx6+vhoZMDvH8dgfMGjSEWqZNoj70CylAA0Dx2ZAuTtlF/l/QCkeEk8O2
         UlXHv2nD2mDzClsv2xiJeg062yYDMWiV4+gQddlVB8oKwBoyLoAUpvYTrpnTIVYUOzJY
         lVWQ==
X-Gm-Message-State: AOAM531HkMxR8njeRLm2TiXm1UG5yqlUOa3fLYYOWxJlunchjxLOJi7w
        PqXEeKGEHCq1NR9gosQP1DkGsMpoVz008Q9d
X-Google-Smtp-Source: ABdhPJxEpdVKo8wvsxi4+aXMUdgoRqK5cg2Kk9uYqcgTsf2EFPRvq6FKcxgHoepgS9UQiRhCQE6qJA==
X-Received: by 2002:a05:6000:1acd:: with SMTP id i13mr39844590wry.398.1638269039704;
        Tue, 30 Nov 2021 02:43:59 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:f80b:b9bd:4d6e:b61a])
        by smtp.gmail.com with ESMTPSA id l21sm16186804wrb.38.2021.11.30.02.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 02:43:59 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: p241: add internal sound support
Date:   Tue, 30 Nov 2021 11:43:58 +0100
Message-Id: <163826902317.1314212.8226710157799410590.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211130100159.214489-1-jbrunet@baylibre.com>
References: <20211130100159.214489-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 30 Nov 2021 11:01:57 +0100, Jerome Brunet wrote:
> This patchset adds support for the internal sound card of the s805x p241
> reference design. Audio is available on HDMI and 3.5mm jack connector.
> 
> Jerome Brunet (2):
>   arm64: dts: meson: p241: add vcc_5v regulator
>   arm64: dts: meson: p241: add sound support
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.17/dt64)

[1/2] arm64: dts: meson: p241: add vcc_5v regulator
      https://git.kernel.org/amlogic/c/bca54f711c0a2506efcce03a02f96f39b311f188
[2/2] arm64: dts: meson: p241: add sound support
      https://git.kernel.org/amlogic/c/c5468e3c930d4d2937d3a842a85df0f74e95e152

-- 
Neil
