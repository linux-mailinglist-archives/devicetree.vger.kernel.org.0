Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61222331A0C
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 23:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbhCHWM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 17:12:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhCHWM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 17:12:26 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1086CC06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 14:12:26 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id b15so467654pjb.0
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 14:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OY3hopxvEO6sAKW7QlbOLs4kWAV+cj3f1/8v0VScgzo=;
        b=TPmBwSkUAr0QPHj2RrD4OV7s06zs+TuiCD4052pgFHBgHIqTsVY3Nat4qwXrr2MDjc
         S/92igb2JyNyZWFaYwm0aWOCTdXs6HObin1cwSDsJ7VcjBgb4UQV9MJQl4Kog/q+TDms
         cEcuyPcBOt1g8GRz8OhGv/BDykY/xwIo3TBZ31fHQZR27I8NX8GfsPeAAeJPgRbsIf5U
         RxStVqA8s7HwhMdAkZxlqI8Mu/O6JqHVtH7fuicg/SJ4XuB5HnI3/Sej7wPzdT5iUq9x
         36pexLix6SUtudy80leFKGN4IbFXSmVLM5ikG0PyjIIqFFqa2EEAW3nziSU0nXop9pyW
         y6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OY3hopxvEO6sAKW7QlbOLs4kWAV+cj3f1/8v0VScgzo=;
        b=dcdYc3hXgBpGKxpdoJcc6SA4dJsrcqa+IM/KBVfx6c6L6h/KpJCpufG3tnF/+szvRF
         ZQ09eE75Ri/C2bkCGVfDC7gUKRkfcdQF/wUqvXlPXVsZOl6bxEmaile/9Kk1MORZ2DrB
         eMQoBMns5yo+guZ6d+5Ea3bxv5mN5ayw6wgbnfV6IFPqOUc9Z+hfYQ94ikWYI5JIScAH
         +0Y59MlKQ5d2pggFtlB2QuUfoECqVYfSljlc1keHn5OdQRaJjJEg9UVtzwlthy/ZbnZF
         k2Rk+hme93tpzIHJtJullVsHcJRWr32pxSZK0QgZ46s0AkAiReU7tUATTijs6WtDCFI1
         KE7A==
X-Gm-Message-State: AOAM532YLeodPokaodPB3GDW2lOlDtmY6AUiF48ib5XyseZuIjygle1T
        WssmHHOuG8NLii0ydcvGxyY=
X-Google-Smtp-Source: ABdhPJw4sBIf1LApz64uEZp8d5VQ2Ppv4ZehGh9/ekftTrJ5zqkVMEm+TMPHfqKJJG1b5+OpfgQ1uQ==
X-Received: by 2002:a17:902:f781:b029:e4:419b:e891 with SMTP id q1-20020a170902f781b02900e4419be891mr22241667pln.10.1615241545516;
        Mon, 08 Mar 2021 14:12:25 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i14sm322373pjh.17.2021.03.08.14.12.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 14:12:25 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 4/5] arm64: dts: broadcom: bcm4908: add remaining Netgear R8000P LEDs
Date:   Mon,  8 Mar 2021 14:12:23 -0800
Message-Id: <20210308221223.394688-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210219055030.3997-4-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com> <20210219055030.3997-4-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Feb 2021 06:50:29 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> There are a few more GPIO connected LEDs there didn't get described
> initially.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
