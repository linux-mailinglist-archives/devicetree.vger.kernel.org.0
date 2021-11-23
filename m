Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F615459B50
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 05:53:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231977AbhKWE4W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 23:56:22 -0500
Received: from mail.kernel.org ([198.145.29.99]:51724 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231246AbhKWE4W (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Nov 2021 23:56:22 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id C715A6023E;
        Tue, 23 Nov 2021 04:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637643194;
        bh=+a1Vb/tWBDONDpB1b5iyeETknv9Hb5W8f50YlA1hl6k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kqdZ5UZ8ZSgXuDcoTgVIhxlyvC9YsLVW0cnIu7bjQTj6eMzaRIGBtGrZVKFt5OwO5
         WCKrFtxr7zNROaCACSiBAuqJ88xcpppF8UOmeW6FIZ3En1Uj9yZ+UPJd4TTVQh0kUo
         aXwjCHwU7X8TUFYn/1N6r/9EV/R9h4M6HxSv6hB/8nLUOWc5vhSfRfQuKzvqp3YZqi
         lSPe0JBFpTkUs5JacAjimWJtbH3KyFAMChQfc3j6g7Rz//46dtx0eZ3bGCmFHZh4xp
         ZHc1m3qX3sVk5Y5NxbBObaeypUhVo6Dxs2HyE+EIYUU1GKwaCIX3j7sYsdPyXXAtsb
         wDzecZU8/FQ7w==
Date:   Tue, 23 Nov 2021 10:23:09 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH RESEND] phy: bcm-ns-usb2: support updated DT binding with
 PHY reg space
Message-ID: <YZxztfprgicGUYr1@matsya>
References: <20211026093716.5567-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211026093716.5567-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26-10-21, 11:37, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Updated DT binding maps just a PHY's register space instead of the whole
> DMU block. Accessing a common CRU reg is handled using syscon &
> regmap.
> 
> The old binding has been deprecated and remains supported as a fallback
> method.

Applied, thanks

-- 
~Vinod
