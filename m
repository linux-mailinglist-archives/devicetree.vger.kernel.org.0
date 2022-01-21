Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B92E2496698
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 21:49:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231187AbiAUUtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 15:49:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbiAUUtV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jan 2022 15:49:21 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02E66C06173B
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 12:49:21 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id d3so36177636lfv.13
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 12:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=S3JtR5HtN5TgHtZRkOpXh8ju3yrdK90cRx1M8SbEib4=;
        b=puMyZeE8iVR+a3Sb+iOHGfY456EUxG13wSpl8BveQi96Jgy+M2+wTr4KDDCGeqEiev
         7UD8YWkY/6HpaynXQI6xIi7y+OcKamuWnlHosiSh+OlwVX3p5nsHFNcdRYTtL9K34jos
         Oxv+SJubYaRQXXhGEA9BsISfRZWn/IsGhD5KDUGMSBEqyUENJCo3+om/i18Dii8QSltA
         crh8UBNrhxS8XMPSApVSqv2mxa9Bl+bxGfAB6zZ9WhXB0T5iT18+1INGrQy8fkCBJZHq
         F8vB79i0UzbdSqiiZrdMwZpJJRa/NSAD/6gYS7UGF0WFrcCL3IpmBtbU8IKI06I7prub
         yG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=S3JtR5HtN5TgHtZRkOpXh8ju3yrdK90cRx1M8SbEib4=;
        b=sRmL0cu3Z9RmfWR3U9LnJEvjTDBld0uMetK4dcyVP84Anvg2C/tAq2Lnh5ns8pHHKG
         pe9wlN5l5lJRS0rFFsD3vlkLVyTO0FHFQRzOKBl57YdFuUoqUlkTVVzCUO5uzOKTprW0
         rXbUD5e4UGVfzvyzt3f42odZCS0QOAu4yCXHze95lGPlgh0mTbkWq2O7WYxonzNV6EmK
         dhRd7X7jd/EjGXzZOmcHiWlfoPtw0iDQrOeA6nShyVTIy9l8MjMTYRThuqHkTA66oVfV
         d7ZNRYgkOdH2pFYHhnzPeunR8/hiKL564MNhRvxTX+RRoe+L+lSYbTqDv8UiPQmA/mhu
         CkNA==
X-Gm-Message-State: AOAM531RVx9NorW5KPQtvJjo5ac1BOHTPU/ZRJK/3mWDTZmkCNhAM/W/
        67klRDeEQJptQFFozbi//zQBWJGkQmPj/vtPTTM=
X-Google-Smtp-Source: ABdhPJz4cRocxI4lE7X2/jNloKThc6MGJV2h/L77np0v0l2YKEnUEnC3MPvR5rM8iDmSJgMmsZ7CAZ2Q2cUcoTZCT44=
X-Received: by 2002:a05:6512:3407:: with SMTP id i7mr4903583lfr.346.1642798159392;
 Fri, 21 Jan 2022 12:49:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:aa14:0:0:0:0:0 with HTTP; Fri, 21 Jan 2022 12:49:18
 -0800 (PST)
Reply-To: fionahill.usa@outlook.com
From:   Fiona Hill <xaviergbesse.2020@gmail.com>
Date:   Fri, 21 Jan 2022 12:49:18 -0800
Message-ID: <CABEvWUJWOYXqnFDs+Ln1Koj6NYyT3vzQTeXubmRAX45NQQ_4CQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Please with honesty did you receive my message i send to you?
