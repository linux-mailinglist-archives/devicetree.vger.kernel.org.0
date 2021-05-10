Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0BB379A0C
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 00:27:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230463AbhEJW24 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 18:28:56 -0400
Received: from eu-shark1.inbox.eu ([195.216.236.81]:49532 "EHLO
        eu-shark1.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230286AbhEJW2z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 18:28:55 -0400
Received: from eu-shark1.inbox.eu (localhost [127.0.0.1])
        by eu-shark1-out.inbox.eu (Postfix) with ESMTP id D2C1C6C00839;
        Tue, 11 May 2021 01:27:48 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620685668; bh=xWFfR+zR2V4HCLUcrbkxEsgUhjNI5D6n3PJhw4hEfsk=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References;
        b=ixCQhipeCWCFICLwfnwwZVj16qJ4QTPs7lLH6Lp2cvrMNixV6gnaycXs4yNfZuq1T
         BuRUPA39yDsFt+V2tGDBXlRJqDLmSnF2fJhbVw84HPkkbE5kJCQvcNQbj4cGczJ+ga
         nyy0rBJPTYzVXS/vpU/+j4jsKf78AzKtstdswgj0=
Received: from localhost (localhost [127.0.0.1])
        by eu-shark1-in.inbox.eu (Postfix) with ESMTP id C29216C00826;
        Tue, 11 May 2021 01:27:48 +0300 (EEST)
Received: from eu-shark1.inbox.eu ([127.0.0.1])
        by localhost (eu-shark1.inbox.eu [127.0.0.1]) (spamfilter, port 35)
        with ESMTP id LrlR4vqsLAT4; Tue, 11 May 2021 01:27:48 +0300 (EEST)
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark1-in.inbox.eu (Postfix) with ESMTP id 7FCB16C0081C;
        Tue, 11 May 2021 01:27:48 +0300 (EEST)
Received: from pc (unknown [134.19.185.67])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 866C81BE011B;
        Tue, 11 May 2021 01:27:47 +0300 (EEST)
Date:   Tue, 11 May 2021 01:27:42 +0300
From:   Boris Lysov <arzamas-16@mail.ee>
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 1/3] watchdog: mtk_wdt: Refactor code to support more
 SoCs
Message-ID: <20210511012742.569b63f7@pc>
In-Reply-To: <efdce3a5-e5b4-19a8-35f1-8a536220bb3f@roeck-us.net>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210509211702.549-1-arzamas-16@mail.ee>
 <20210509211702.549-2-arzamas-16@mail.ee>
 <efdce3a5-e5b4-19a8-35f1-8a536220bb3f@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: OK
X-ESPOL: 885mlYlKBD+tlF+pRmXYAhpV2ydIWeTj+e++1BlagAiJPFD4Yip+XRWr7hJ7DSP4og==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On Mon, 10 May 2021 06:21:54 -0700
Guenter Roeck <linux@roeck-us.net> wrote:
> > -	struct mtk_wdt_dev *data =
> > +	struct mtk_wdt_dev *wdev =  
> 
> Please do not rename variables. If you dislike that the name matches the name
> of the newly introduced structure element, find a different name for that.
I will fix it in v3.
