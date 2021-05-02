Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F700370DBB
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:52:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232221AbhEBPxW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:53:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEBPxW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:53:22 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 933E0C06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:52:29 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id e15so2442177pfv.10
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YL2oaqaYlHIt2fcygbmgb0prN6qJGxmFrMh1FpWgwbo=;
        b=sy1SCgApXlHjRqbSV7p5QKg5dMA5IcSiOx07QCzl1wbxKx8bQBkeMAuQHlrv8NOJxd
         KKvQCX+CB8icI6yyNSkNg2U7XvLresTp7xSUiAFZRLjJGDo9x281ss94+bT3n/YrizYq
         7MEFudQ0+XtaKoXIthzw1GcQjOteeQKcrJOiTrNzeXeseHCcGzKiFDPvw4nlTWnWBELZ
         IQbzCMZulFFVVuQGc3P99CwiM+HhQL75UsMJkf/aYD2fy/f+JN+JMTtxpCA2wcMpdyzW
         lHpJXwu7BAbPYNARrrmGYi8XM2LawaDc05NUB4Fglo/jxEsEsn8IEmYmUqPp1MWhqalD
         ymaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YL2oaqaYlHIt2fcygbmgb0prN6qJGxmFrMh1FpWgwbo=;
        b=nsO0vtA6fFmgVxZM/bkeNJKzjNkccGg9IsrD0c1bOokahdzx5jehrx1dpDZq7UOZIA
         GL6oQ0rzIZtyeEEeOY49tTHyoB/GLRMXNIN5i+2jWjLGmLK0RoFu3vefN/QFGKrpqzBe
         SkeRKXEELFDPA9RQpKKSgP8j+X1YWH48m4C2bL4bs/hn+dALqb+C7+LiGhtq6zErV9WC
         +/OfJvKXkYUDrjD4Xq70oI99zmi7GVltXP2ROjM6m6GSzVdYJwFge3eXln1nBHx6FCFC
         eR/VuLGTjfWElZWwa8aLcIR/VYZUV++P7SlruMcyDRtCIi9WndMxXzKCB64NfN+B0QW4
         GDHQ==
X-Gm-Message-State: AOAM531aO/ZHxQ0eE8eGuH8hqSyiY6Jtg2YMGVl9lln60lcp1iAOquaa
        gyFPkOoB3K6nPbSrT107m6o=
X-Google-Smtp-Source: ABdhPJyvrexwBbT76D2rNN+wmdrnJ6VtFESy1wYYJNPKqY3ETdupCTpMPCXSkAUiRTxn/E5RhcA8AA==
X-Received: by 2002:a63:cd08:: with SMTP id i8mr2133868pgg.312.1619970749172;
        Sun, 02 May 2021 08:52:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 33sm7585821pgq.21.2021.05.02.08.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:52:28 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux 6/6] ARM: dts: Hurricane 2: Fix NAND nodes names
Date:   Sun,  2 May 2021 08:52:27 -0700
Message-Id: <20210502155227.945728-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210416133753.32756-6-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com> <20210416133753.32756-6-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 15:37:53 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
