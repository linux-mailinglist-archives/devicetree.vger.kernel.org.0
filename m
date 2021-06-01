Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D509C397223
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 13:09:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231219AbhFALLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 07:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230308AbhFALLa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 07:11:30 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FD58C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 04:09:49 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id y2so20494394ybq.13
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 04:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=XXOc3lnPOnrLHfUpjTBiHdlnPYpmdbZCpUcpd3AYxmA=;
        b=KkciIHxej/cDPv+otmcenZE6mgFcqXi+EEF2QfQheBXWG0ujdpVMshAUzuiC786xeg
         uc/IC+qcbt282WF3NoX2/nq0zhVvz3xQstkka0KwAUjZlAMqlmpPqV2cs37VLwFEmdiY
         gGp6Mvqw4+uatA3pb5C0CfMfIAUsBXQvn/7J8LfuvtQxn/l0lTVl+gfFq4p0afltM/4B
         TyIlCuJMdpppZG8FnSHJSwTzsNV3ze3OsQHydAgz2eKoTqNPWnBhgvUBHnWF8NlBQwLF
         hHegK3wMaHcd+wWSiMrJfcd1oAoha6E3qD4qgRqJ1k3LcHHchgwipi2XMz22dERf0ek2
         fSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=XXOc3lnPOnrLHfUpjTBiHdlnPYpmdbZCpUcpd3AYxmA=;
        b=XJpPwl+UgDv2osISIQD2thyEM1bewd7Qy4o0XBQ1jm77xXEeOZvBSCx9QRMLS3LmFq
         bM6rPItyhtUpe62geRMH5Ek0/sgPQnx9Gbbe8AEn74hvUeJwULXtHQqlhnFj5LQLAqqM
         PVJ1tXM7UPG8wPHngdeY8Jz9aYCmMHKFq53l1ECAJN2CGjvZM5Lyn6RK/SHVaMwyF++T
         HRXgTuW7pyuBl5JiA06e6ZZhZvXgFOf5Vh+EEiQ4Ihqa/zg/w5fEPwcfIsD3Fba/OX3C
         j+M4zj2CwE+1waw23P7GdAOFoQCIpDD22beEaGutw8VY7D9SsC3j8BoAE1j7Kvb/japw
         238Q==
X-Gm-Message-State: AOAM533r2hqcLh+a69XgvFEodkZ12ab/DsQmD13+Q/PnemXtqtEnxRQL
        +CJMgyQdhEWJbCUfbOe3XTQ9IEPttqcnBWpgPQY=
X-Google-Smtp-Source: ABdhPJzaJAtTQOC0mP8QA0Xhd8BAfuQNhwgFVNBmHJzYVm+XPPAt/UFXMbZFKbGhDFmIOugCEv2mTLeFeFXKVZVOcKQ=
X-Received: by 2002:a25:a08d:: with SMTP id y13mr37269997ybh.522.1622545788320;
 Tue, 01 Jun 2021 04:09:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6918:3788:b029:26:bdcf:5cb6 with HTTP; Tue, 1 Jun 2021
 04:09:47 -0700 (PDT)
Reply-To: c1nicele@gmail.com
From:   Stefano Pessina <drlarrylee42@gmail.com>
Date:   Tue, 1 Jun 2021 14:09:47 +0300
Message-ID: <CALi8qqZXwsjsjdDBLwZyi3qZWpTOKJ2PXfSH602sF3u2HKxHvA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello,

I'm Stefano Pessina, an Italian business tycoon, investor, and
philanthropist. the vice chairman, chief executive officer (CEO), and
the single largest shareholder of Walgreens Boots Alliance. I gave
away 25 percent of my personal wealth to charity. And I also pledged
to give away the rest of 25%  this year 2021 to Individuals  because
of the covid-19 heart break. I have decided to donate $2,000,000.00
USD (Two Million dollars) to you. If you are interested in my
donation, do contact me for more info. via my email at:
c1nicele@gmail.com


You can see here: https://en.wikipedia.org/wiki/Stefano_Pessina

All replies should be forwarded to :  c1nicele@gmail.com

Warm Regard
CEO Walgreens Boots Alliance
Stefano Pessina
