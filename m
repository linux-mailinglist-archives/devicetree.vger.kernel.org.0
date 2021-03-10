Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 554303347DE
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 20:26:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233446AbhCJTZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 14:25:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbhCJTZW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 14:25:22 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE8BAC061760
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 11:25:21 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id 16so11276772pfn.5
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 11:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dqb3saigoqeKC76uveS1H3HUV6ZlbzECQ2GU0+CC0sc=;
        b=lWWKHOUQTcyZ+HdF5UvPC8NpTEd6IYA6LWYgKTkaRDZi9/SP/rkGEiK5trAyN0D/6k
         gZLW3PEW7W+XYnyIGQfYeqoA7xxPk19Qg+cs2KQbcotrUOYpxhmdYfHYJ2SP9ZSRMzB3
         SY1MInrr78ptpG9kRI2W3U1kgG9w23J59p/LgKB1cQ2nR9HZbpMLoinWwX7ToY9fl6dl
         4tFfcPIQE781orKch1iXouvYhzeLr8C7vkIhQfHSkSBmN2vwaTBgEToyK6d7svm403Ug
         JVQgzYL/Ctd8WzBK2PXWkx2NupJWtISrbYErQStpYhd7J9Smy6RG893c1wssmYBmtyyF
         7TPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dqb3saigoqeKC76uveS1H3HUV6ZlbzECQ2GU0+CC0sc=;
        b=CabtEcmoTxxlBjNA1m2x9FRVbYx9Gs2X6qsJqQr0bNb40KycZRIjKlSYnGG8K2hB7C
         gT/+TMAZIZ8gcoEprapb3B799HsJcLwp3qRUkKYU8bIPDM6RwjNDwqmDkVisD3cgTOnW
         A4InjPyn4N3B1oQwxhmYkH3Q/8AVthSJoe+4tf46ZpL63ywoXmLIYJx5G0JqefsQGwyg
         c8dW9DHLbCa/LeLqmukxm+ZQilqLHXgbyO55oem5/LyGLsQ9j5FBdky/4iSvXSifCK8Q
         S2E2RsiPAg8WiiZuP3WT3m65TxKV2EPyLQp+L6RK526LED1oDKCGWeyMifHhjdOBc8cg
         R7tw==
X-Gm-Message-State: AOAM533+EOXs8qGTYETui9cajNwx5CNj3H8S+unSlrA7w0ge6tXXGOU5
        w+R52MpjpmceUNxBqhTQquM=
X-Google-Smtp-Source: ABdhPJyO/7nKqxrXFYu4jtly4S3s3zlc5Sl6ZkjsizOQ6fBFASSCtq6HNzq6A+tiMCHtpqSYKgX4gg==
X-Received: by 2002:aa7:94ad:0:b029:1ef:2392:4ee8 with SMTP id a13-20020aa794ad0000b02901ef23924ee8mr4393251pfl.75.1615404321506;
        Wed, 10 Mar 2021 11:25:21 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id mp1sm144665pjb.48.2021.03.10.11.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 11:25:21 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux] ARM: dts: BCM5301X: fix "reg" formatting in /memory node
Date:   Wed, 10 Mar 2021 11:25:19 -0800
Message-Id: <20210310192519.2686953-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309125500.15224-1-zajec5@gmail.com>
References: <20210309125500.15224-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  9 Mar 2021 13:55:00 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes warnings/errors like:
> arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dt.yaml: /: memory@0:reg:0: [0, 134217728, 2281701376, 402653184] is too long
>         From schema: /lib/python3.6/site-packages/dtschema/schemas/reg.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
