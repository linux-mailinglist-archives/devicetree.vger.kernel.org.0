Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F011E1FE49
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 06:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725982AbfEPELz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 00:11:55 -0400
Received: from mail-yw1-f65.google.com ([209.85.161.65]:44711 "EHLO
        mail-yw1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725818AbfEPELy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 00:11:54 -0400
Received: by mail-yw1-f65.google.com with SMTP id e74so823076ywe.11
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 21:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6NdkZ/duDqLu2X8L8Sp9Y1qQjsBGdKP1kR2TopQEGdI=;
        b=h98J4Si4/wykEUWphi4d4zl7MVsiGlxZQ6HVAqIclAJVVNx36TI/Gb1g1PcpNkvsN4
         MxNtkNqR10IHlg2XylQTO3XARn21apQcIPqn51p2b1ajul9hzUVMqFJL2JYPJL6DH8Wa
         DK+93LMNzo9B95rN6fkqxXdEqIiUqN/14UnJaGx8NbzXO87vuLClz7tRB6+n423UqMos
         Lq1eg7agukcKpTHnoE8QlTNbaOd91nwdP0j0dL2O5UVznM0YLWWxsvv1ytI2RqP2k+3i
         seTD0xiJqcQBMdSCj3wWGBGXcMXpROw62l1g1duECrW53ow5iiQjYxoDCWzURfcqKAmj
         u3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6NdkZ/duDqLu2X8L8Sp9Y1qQjsBGdKP1kR2TopQEGdI=;
        b=TrLhNXQrSzGfHUVeWfgJ1qpG6HcvdUzcu9LdQKUvMYvgn/m7W1ZG+U+gFidD1vDM9j
         wGjUowXy9HJTFod8TC9nNIJqsfHEENno2q0x5r9NKF2OfsCRXFHgKIPvpGVjKgK1LpLL
         3aqIet0BXOLdx2DanMEI79zyY3eJjR8OvtT+p/TSJ2zs3aKC5RR+FxRL68ra/zZG6Vgu
         jdNf0m9+Bvmyk3l2Qkn7D2xM7qX5xt9II4ciWEyXTRc543xgpdr+0POBZQ9+dOJcIono
         5JzX9i1pFCPBXrbMIJwCFv7Y8YXPDUWuNCrX0Yv9o47AplbNqLKie6cHmkpq8bc4M+Fd
         Gd/Q==
X-Gm-Message-State: APjAAAX5BOlxPayyWWexe1wDqNrtyzSrxf6NqP/fjjf4KZOiava+4tXi
        GE9bUKD8TxEdg9+pTYOX9XK8eg==
X-Google-Smtp-Source: APXvYqztbht9RfzIpZ2Bsj4NurJ8AOAUJ52oxUqsz7FB9PMDuUFaijoDiZw87NThfUjW+P5pLLGLNg==
X-Received: by 2002:a81:241:: with SMTP id 62mr23262278ywc.109.1557979913641;
        Wed, 15 May 2019 21:11:53 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com. [50.116.44.211])
        by smtp.gmail.com with ESMTPSA id p83sm1647743ywp.36.2019.05.15.21.11.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 May 2019 21:11:52 -0700 (PDT)
Date:   Thu, 16 May 2019 12:11:40 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     Wanglai Shi <shiwanglai@hisilicon.com>
Cc:     mathieu.poirier@linaro.org, suzuki.poulose@arm.com,
        robh+dt@kernel.org, mark.rutland@arm.com, xuwei5@hisilicon.com,
        mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        suzhuangluan@hisilicon.com, John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH v4] arm64: dts: hi3660: Add CoreSight support
Message-ID: <20190516041140.GC12557@leoy-ThinkPad-X240s>
References: <1555768835-68555-1-git-send-email-shiwanglai@hisilicon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1555768835-68555-1-git-send-email-shiwanglai@hisilicon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 20, 2019 at 10:00:35PM +0800, Wanglai Shi wrote:
> This patch adds DT bindings for the CoreSight trace components
> on hi3660, which is used by 96boards Hikey960.
> 
> Signed-off-by: Wanglai Shi <shiwanglai@hisilicon.com>

Hi Wei,

Mathieu and me both have reviewed this patch, could you pick up this
patch?  Thanks a lot!

Leo.
