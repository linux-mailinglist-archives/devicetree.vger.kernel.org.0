Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7949450DEF
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 19:06:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240298AbhKOSJR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 13:09:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240037AbhKOSFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 13:05:32 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7820DC0432D0
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:33:37 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id j6-20020a17090a588600b001a78a5ce46aso13786443pji.0
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SkDsviIHLiBiHueCx4v7RwmmzV0eRw9ZFhHMmadj/gM=;
        b=oFr/Tm2/oUYt+wvv6F6Mh/Ka/1qQ5AYXXJffdQh3k++EfpEpsY5+xyBPXMXv6jPB+V
         mU5RiDB7eQImnCNzF88L6ioANkbEZ98Tmu99VJ+dlllq3/C8hq6SjxiTh4AvMWA4TXjL
         9dBpVDiefNNkwPCGsicDdgYOIyR+pb9HFzgVJIiTc4WTmHKMAgEiB4i9BkXX/dYnrBeR
         Fu1mpATyoYk1gXLpL8jj4LZRVrwc8ZY1jIH30nq4q6l8F5kqE7IdHAFeq1BKx/N3vh+x
         YInSNGBGf17Z5hBuDORCpAOTRO1wvumpCrc6VZAbWF9BgREyb9O9mRp3O+sBOFb1EVBE
         Patg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SkDsviIHLiBiHueCx4v7RwmmzV0eRw9ZFhHMmadj/gM=;
        b=53VrqFd1p5LkcGA69erWqPqX5ZrmRfrNwJSynvnIi2nitKRIXyfXTg0u/mXhToLM23
         GLGzgY1Yw0K5GgyIyDk7P6WolpwpeI04WbeOx47RHNE5L33sLdLG1XZsBEzWkNgPQIzo
         tulOaGPDYRiRQXT8kt4gc0w1s/pV5p7AgslVUsyzPpHYCTTRLRuEB8u0QGP4UWc/CT0R
         9IFRlDmcUGPwx1URyAJqlkLwPk7cW0noTuCb9pkEKRhRFComlX6TE3N4dgNz+tTC6PCf
         OL0Q1/bO5CMonCYhyaWX+APwOpdvKC7d7mb71tB62qfbEViGfBV9xIeCqY7vJTBk/VQ6
         AQvg==
X-Gm-Message-State: AOAM533AteNtzXgSw8Sql3P8UkWq9uVxtLx8PY80836XXF5tnRU70C98
        0FmPTdUbrqJugnP+/8sBGaU=
X-Google-Smtp-Source: ABdhPJxtVGxiaSG4zkgbWQ75rE3qaEbF9sfkYBMZ/WFdBWo+lAPvxjMS442GGv5A2DjQKkNWqycNoA==
X-Received: by 2002:a17:902:8645:b0:142:8c0d:3f4a with SMTP id y5-20020a170902864500b001428c0d3f4amr36769778plt.3.1636997617021;
        Mon, 15 Nov 2021 09:33:37 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s21sm15829501pfk.3.2021.11.15.09.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 09:33:36 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: update CRU block description
Date:   Mon, 15 Nov 2021 09:33:35 -0800
Message-Id: <20211115173335.489583-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211029160523.2812-1-zajec5@gmail.com>
References: <20211029160523.2812-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Oct 2021 18:05:23 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This describes CRU in a way matching documentation and fixes:
> 
> arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dt.yaml: cru@100: $nodename:0: 'cru@100' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
>         From schema: /lib/python3.6/site-packages/dtschema/schemas/simple-bus.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
