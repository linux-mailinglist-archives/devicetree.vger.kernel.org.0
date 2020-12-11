Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D9EB2D6EB3
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 04:36:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395102AbgLKDfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 22:35:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405261AbgLKDfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 22:35:14 -0500
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB28C0613CF
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:34:34 -0800 (PST)
Received: by mail-pl1-x641.google.com with SMTP id p6so3911744plo.6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XYmqDyr4fC3PZmFsjlkv8u/E21QpEHMo+/6oKHdP3oo=;
        b=hmTWvm2Hex+RJ06VVZ47E2nPXDkjNLKp/CK1ZobCy+KY062nL+KOLapL+LriTfgswV
         aqJ8w/5PX6XpblRKGQkdvahtVFr5Kud9gCT19RcPmoJwAbVbF9bfH0naw8LEwpNT1Aho
         pWpqVmzkenNnkoMPgrzw7yMGCD8u06JaKjrDB6ObN+koduGjOyLUqfSr9jOP78qVgylF
         4/PjDui6oupZyDJ2RQZddY5jwHGEEwARwD4rO79OJqNoVjF5VK3stGuAigrW1cRjXM0L
         oxMh5Nc5HU1cgwcA8rtXvvLdHGkWi+Js2nY1QsZuBFsmnZBLNW97G1MvWty9/ERAhbKg
         UiIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XYmqDyr4fC3PZmFsjlkv8u/E21QpEHMo+/6oKHdP3oo=;
        b=s6hvO3E2IRjKk7tKy/ud6L7SbcEyRmzR4gKRaIJwAB2SdYYhAA3hfB5/oeyIrgJPnf
         0qm19ePRCXWf4WWxgSouxwAJMkKcda9rJwxJC9/A5VofWkxaUZ81WZwiKhbn6pTlSRMx
         dgcg3CpAWqU70SkAGIk6FVVC8GV5PoNBpX+VY5URLulFhyWde5DiEX7GBLN+MS3AkhBH
         2baHdoZZF48qM9pj/+Y+iel7Yke0pi7VbfVnFuqf4ik2C5pTGTcCoPzx73JSDmAxBCXc
         waBtq7XAcqFhVRK5fELTdkw7MHB+39phTLfd03RuA8wkQBJtWbHHi65fzrmkW30bLlae
         pkFg==
X-Gm-Message-State: AOAM530XzYRcyo777sCUfvgSzUWbyBfhBpvvU1TdbesTJQpjQqB/QR8L
        79euFXf0LJhXvhRjNAQaLaU=
X-Google-Smtp-Source: ABdhPJyCHhatJa1hU2lVBRSPbspmGSgUQxEKe/Qrknnn8ofq6e0DpYVM+GhXn7V5l+5PtL5Zh1Y7OQ==
X-Received: by 2002:a17:902:7689:b029:da:52:4586 with SMTP id m9-20020a1709027689b02900da00524586mr8996931pll.47.1607657673569;
        Thu, 10 Dec 2020 19:34:33 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id u15sm8575510pju.7.2020.12.10.19.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 19:34:32 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: document Netgear R8000P binding
Date:   Thu, 10 Dec 2020 19:34:27 -0800
Message-Id: <20201211033427.2388378-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208070304.12536-1-zajec5@gmail.com>
References: <20201208070304.12536-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  8 Dec 2020 08:03:03 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a BCM4906 based device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
