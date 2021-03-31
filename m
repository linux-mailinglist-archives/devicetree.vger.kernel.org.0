Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB45335098C
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 23:34:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbhCaVdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 17:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229624AbhCaVdB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 17:33:01 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 622F9C06174A
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 14:33:01 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id f10so203593pgl.9
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 14:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=rk5hGcPQBnN1SN2dx/HkSBbBGNgs3jWmWn+abQ5G2Y8=;
        b=ZID5pYwBKnZsdQnnwpRR2fq/yxgzUjbWR+eMz0HyUAl33Yvno2whFZuIsSHGMN+AAA
         qFLI2n3BFzRa+Z1vjUFK6kLBYR5s43ZTXFok6gry+JBW8sQksfbhRMiAgRo1lGOHpCNK
         Nv0yE7bohpDU39HXuT4qxc3nOPg++9fcDhZxReFSiIonZpp+HsgDhEkRaWwNwxaxIy4n
         T6zCeSidKutLH7vemClxuFCSL2/Pz+bwpIoR3j4U3G6Z83Fl1xYI7bMwLri3ZcTXP9FH
         oGQdlc0B/Ixc5T6baouEL6TBK88YWVOjCV+tqdXjZRXRHSHSKBPy2aK+2g2a15jmSprN
         Mcvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=rk5hGcPQBnN1SN2dx/HkSBbBGNgs3jWmWn+abQ5G2Y8=;
        b=FqzzfyJiAUrhaSq46t93iqmjr8GywEJZZtm5RVYguwP83uJFCwb4yoXGqLODy07O3O
         rDw9vvvCn2cN9Y+F+u1u1T9oyZg1Ak+Lr4jrXGMz3+7JNoT6hys4vyeYrDYnid+ZaT0G
         WjsLKJnYQizNY+Ul6DwGNUFHXB2GfPNiRCZHwLjf/5uG8nhhZPsCVnoTdI+jqaQ3opjb
         mpEKoFQ5A8XwNtG/hRUR6CVeUeo/ttDPfp9YKeNZXwsvP4O8G4Fs4c/VjQxdg0yab54e
         uny/0FPC3A6gmOP/oZd7k1U7eIKckOYhNbGYfram1sTpuxbABqUId7o4hIpIOe2Mys4T
         wxqA==
X-Gm-Message-State: AOAM531RBqeUnftWjN/8/yXlioYVXPfLVQiYHWAdGpSVDbDS0cpyvs7z
        FdASmaZpKVft/IMF2I/oS5A0TQ==
X-Google-Smtp-Source: ABdhPJwRaTBqO5x1qiRNai5Zvd2mJUmOrhI1W6j8wTIptF68N5rP1lqmo+HXIilbqYcec1BfNjCPyw==
X-Received: by 2002:aa7:860f:0:b029:200:851:1bff with SMTP id p15-20020aa7860f0000b029020008511bffmr4789806pfn.64.1617226380862;
        Wed, 31 Mar 2021 14:33:00 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id a21sm3121545pfk.83.2021.03.31.14.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 14:33:00 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        Hyeonki Hong <hhk7734@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: meson: add GPIO line names to ODROID
 N2/N2+
In-Reply-To: <20210329161256.31171-4-christianshewitt@gmail.com>
References: <20210329161256.31171-1-christianshewitt@gmail.com>
 <20210329161256.31171-4-christianshewitt@gmail.com>
Date:   Wed, 31 Mar 2021 14:32:59 -0700
Message-ID: <7h35wbc8l0.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christian,

Christian Hewitt <christianshewitt@gmail.com> writes:

> From: Hyeonki Hong <hhk7734@gmail.com>
>
> Add GPIO line-name identifiers to the ODROID N2/N2+ common dtsi.
>
> Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>

You need to add your SoB here also.

Kevin
