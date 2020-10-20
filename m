Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1405293F03
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 16:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408413AbgJTOt4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 10:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730956AbgJTOtz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 10:49:55 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A2A1C0613CE
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 07:49:53 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id gv6so1083792pjb.4
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 07:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=Fg6pNbj6ALE21jJQou7VGOk/llHej9K+3C1jIB5kjaI=;
        b=s5HEKF5YDQgHaPTun57X+Qrt1B3vtLMKSsqq+t3SWWhZ18Xiq1hyvXrUGb6YkModH2
         bLg9eQViAONwRN/GttLbHK3reudUxphCoxnSjBdLJ0nSkNbfzeISraprjopY+7fgVld6
         X6X7AdX7Y0ZdG3ECdBCboFnAA/XOXtvBMkSWtdNIK4EEQ+988LUer+A/dNQzB33Qbpzr
         U06DX9SrMSi8jPGBZuQf9QYP0i65I1qUW+AL88fGzqwmvdByofbtEOp+QxL/eg+EUyM6
         uGFag4kQTmY0N0v2j/6Ik0YfonjPH3gmkejGLie8L0B6mYhDm0G8ub10g5S8KyJN4yyL
         WnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=Fg6pNbj6ALE21jJQou7VGOk/llHej9K+3C1jIB5kjaI=;
        b=YoClChlkRtvB2xJj0FkN+O+y1gPgtn7GcOQm3/J8NxqCcTi8BaeH5LKOZK4oUzOCPT
         CokFxfcI39Yufc1RsCNTLELkUBlS50pMI7Iuzc+2nJ4CwF5q/tTGkha9luK2YfRE/iaU
         aZVZBp10AQNwFRKv6KZHmXVeOtnU1SBBCo/l3c8i9sRBbewxBT0TD8XtqKWNhe/44jd0
         Qa/M8OoZORBm+8YXF3dgO/PAhJ6/BrZ7Y0FsSjK0wDgPtS/9UFjANTrG9tJAEYYjcYRT
         0+9aDWLEQA1SKGOTRUcaswpmjKz2GBiDA/BIKBQm3NCHYPH4vNd9rn5IfjqfKKTGi9hP
         JGzw==
X-Gm-Message-State: AOAM532JhS/PjY1Zee2U2Nea3z7VgMZLnS8HGJnELoCweiNM1De+m9BT
        Pezy4OxlHDDKP+qoulk9lD1prg==
X-Google-Smtp-Source: ABdhPJzxJ1bssrjG06M7ZqnzU+aSs+/Cyuw10gkAHVZv9CuVKhvM3uNw+Zbvn2KmqaYehwh3HQQRMg==
X-Received: by 2002:a17:90a:e697:: with SMTP id s23mr2996501pjy.16.1603205393066;
        Tue, 20 Oct 2020 07:49:53 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id y22sm2706794pfr.62.2020.10.20.07.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:49:52 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     Anand Moon <linux.amoon@gmail.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: amlogic: add missing ethernet reset ID
In-Reply-To: <68ee4022-df9b-c36e-b828-bc93d6507473@baylibre.com>
References: <20201020120141.298240-1-jbrunet@baylibre.com> <68ee4022-df9b-c36e-b828-bc93d6507473@baylibre.com>
Date:   Tue, 20 Oct 2020 07:49:52 -0700
Message-ID: <7hft69kl4f.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 20/10/2020 14:01, Jerome Brunet wrote:
>> From: Anand Moon <linux.amoon@gmail.com>
>> 
>> Add reset external reset of the ethernet mac controller
>> 
>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

[...]

> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Neil, do we need this in u-boot also?  I seem to have network issues in
u-boot on board with external PHY running mainline u-boot.

Kevin

