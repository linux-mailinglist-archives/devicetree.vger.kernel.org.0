Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94ECD331A0A
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 23:12:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230156AbhCHWMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 17:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhCHWMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 17:12:17 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19794C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 14:12:17 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id w34so6287797pga.8
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 14:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WkeE5OruyjwIYI7nQBM4zVhH5T0NsrzJarLg2o4SYXc=;
        b=s2kW+n6AvYqmxOmQLb/0fD5NFlty/FutciiGX0Z+8dP8FoI6t67oQSqUgA4r7OPX7C
         DJFqj7eOIzqxDHnpdW5B/vaOye2G5+6Jk0rI2KwCYgKopAdWm8aF6dr128pikXy3fMk+
         o+DU/cJHuLWgYTYPEUSpwFImAr+dPeQ/M/TjGM4t8e9/yOUWSOEZDJ6ZiqnoUlLjHH16
         wGDhDN4oAbO4SQmXGW6XI5h6Wl1nQtTcSQhSWQV8Kawr9yD6kQGWoY/w2d2cUWK9lyk5
         7gCsq6ErzzRGd/4wBOw0zR9g1sXLwuUw9KfSsjZRi82ZgeqWWpBOES56/60NUtQgSKls
         1maA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WkeE5OruyjwIYI7nQBM4zVhH5T0NsrzJarLg2o4SYXc=;
        b=sscoOMkIUbw0j/nnX66M24fJP7nyZ0CxT6+HvENdqZvJqaQo2yMggkLDKd9f962Muu
         fGn0LhilBuqY86kluUKt26ae3/xHmeaGB3reMmoHlTUgKfS0uKnlNCLPLdphBufi9NT3
         SWV/0GMam/rusu8P5JQjrWhoQrSy1+l+YrYWmLb//IPzDtBc1SS06e7NIipP1PDhJcLF
         9SEkqHDzTvJG6u4FzcrWpEe6kqxk5wFOZ3QvRmjKVuPA2asn5e26Vb3hYPh+BUwNwJX4
         dFFnZPqaHrTih2dNnxi7y7qIAnfdxFv2R3/Xc2/69MJS+XtIMv0/85B9oR3HCLEC7/SR
         uXvQ==
X-Gm-Message-State: AOAM5317GvqC/KR4ItHUTxDHxp/YBAUlFDvDW4tX1yv0JUMLCqrUwSGF
        G2QNNNNKxAcFFhi4yD/VKXk=
X-Google-Smtp-Source: ABdhPJxZ+d1ASJXqw19ZGqGNhoDvdhCDmdaGKQwIFAxtyinPIkBFW24C9PJ0Ixw7slkGVdt17UA4iA==
X-Received: by 2002:a63:2262:: with SMTP id t34mr22772200pgm.303.1615241536695;
        Mon, 08 Mar 2021 14:12:16 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k10sm10436980pfk.49.2021.03.08.14.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 14:12:16 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 3/5] arm64: dts: broadcom: bcm4908: describe Netgear R8000P switch
Date:   Mon,  8 Mar 2021 14:12:15 -0800
Message-Id: <20210308221215.394577-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210219055030.3997-3-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com> <20210219055030.3997-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Feb 2021 06:50:28 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> R8000P model has 4 LAN ports and 1 WAN port.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
