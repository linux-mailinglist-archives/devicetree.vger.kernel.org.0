Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50BC5339FA2
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 18:50:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234181AbhCMRtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 12:49:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233951AbhCMRtn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 12:49:43 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58AABC061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:49:43 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id u18so13365382plc.12
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SEc5oicG0DPq85kMn/I9NaJoHgAr6auSLmRXbKp60Ew=;
        b=U4hxtXq88kfQ+oUW40Bw8b1yifiMBrmMIrxzHCXDqz5XSpen+jSCVfIIoD81oWU8y9
         GtwSu69EcoevBOvezzTCYCduS91Gcrfl4vsTwe7mCeQdJzd4+XGnT3B+8P3w1ePmKrr6
         qMCJKKYpQ6R44sSElGViM74V5cdw2JDlJxGDp601i3BYEunOjoy7NbDYv8bU6x6FMZe6
         0I90h4hMEI0bG9gqZFEDBno4C8mI+NoWe8u1xYkK3v+xjhupCkyTAqK+2PNqBuVHq2vE
         Waqm+hVUthBxawnASDm3Sqfd9GPi2T0Sz37uc/lrXpByCI+ilVj52Cg1OpRZ7d19aIaf
         NXtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SEc5oicG0DPq85kMn/I9NaJoHgAr6auSLmRXbKp60Ew=;
        b=ZBmm9Cksk4Iwwxui/c6dkBLuUqazjm41xpfuMIMm7e7wG2/QURrkWeTj0kffFPMTuz
         RXgn+2Gx+YciudzOQpNOuS6OyF54TWihbWSlccX9TvdJ/ZezYqxr0/T4iLcueiZUvmT3
         dS4O9RVv3mm/e4eg5clYWaAyxRFfmz/vQERMzNRd5xaV6/22C6POuWfgBOBXVtYS/BZL
         b3dtMx2Y2r1JE0InZ2Qk49bQODtK8VwSHLKQEg0CfEOSQcl81Muq6MqmkOQfBkIEdpIz
         G2ZI4Aze6KwnZi8jXBsZWf3phEiNI8H15OGrgxXhcrPzipxZsKYP6RzfwUX7Etj7CyNI
         ktog==
X-Gm-Message-State: AOAM532BHu5qvZNd4MxJa7KceVQKCvIBoolO1KaJ2liDEb1GK9fT25E6
        xiJMN/29zUzSE5cQrE5HMLCeAQjqpdQ=
X-Google-Smtp-Source: ABdhPJxmNg0K30kiUp5xsFeTonZ1aVStiFLRatP7fHKTCSC0yd7QSEvY39fb2AAfdSYjwWj11SZDrA==
X-Received: by 2002:a17:90a:1049:: with SMTP id y9mr4575034pjd.173.1615657782825;
        Sat, 13 Mar 2021 09:49:42 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id x190sm8658191pfx.166.2021.03.13.09.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 09:49:42 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V3 1/2] dt-bindings: arm: bcm: document TP-Link Archer C2300 binding
Date:   Sat, 13 Mar 2021 09:49:40 -0800
Message-Id: <20210313174940.3843238-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310074603.17715-1-zajec5@gmail.com>
References: <20210308131850.22576-1-zajec5@gmail.com> <20210310074603.17715-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Mar 2021 08:46:02 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> One more BCM4906 based device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
