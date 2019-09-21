Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A517B9BEE
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2019 03:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437018AbfIUB7E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 21:59:04 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:39975 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404897AbfIUB7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 21:59:03 -0400
Received: by mail-qk1-f196.google.com with SMTP id y144so9246036qkb.7
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 18:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=K0xV+Q/+lH76qOTLHDeb3Rh6Bv6ZBT2WraMP2UWkKjo=;
        b=kUQMMuXZKtVLWjQKUDQyrAgbpeaceIA2XHUy6ZVa7euUj6gsHX7ejCXN1o5KhlEC1A
         n9RgkwV5q6GBbqTktGELZT4rqF4ta0V87SpGEOhE87LFAy6xJa23LYNqwhPGFusvoTZy
         7LbfRvKH9XX3VsE5OebA1n/TP1v3Exnb79JTXEcL6HQNgZ7Y8DAeqDs5NIig/ifoRmWA
         YvvJ+fQ/smPo9ehuAVdoJkXID6d1AWQRdQ8DTnvj2dtaRJVuyCvRE2f9H7ykzsheISxe
         ZchxaBNF/R8FLjKAvkwL2YbOCVgHnDRfVBOxFpCi+aPETJwHn6+BUqqpuiUW+qvmbtOl
         cqmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=K0xV+Q/+lH76qOTLHDeb3Rh6Bv6ZBT2WraMP2UWkKjo=;
        b=OdGHcusPCavi/hhgKFxafCuXEca/KIW6UzRmcVdnh1cDw92ke+b1lS0KTDG6lw/YXf
         3y8eZ8AFUz0iRUMoZV4ah4u3N5a4DnA9bxyIfjkATR+op+dAGLEUvoy6TU4IxELABayj
         8r8S63P2DeZULPD7mCTJEi+SMHFllzmMJ07og8gPhLILnXTjM/9SQPEES+RNgYPpyRvC
         3XJ+8RvoGjk1ufiiAAdSk68mjGK3H2Mml6yPMvI53xxSarsMpZLqPPq2y6NngX+t5Ftz
         F2tVcJtryPkGCH4dyt/0fclELfAzkvIqvy3gO322hvGoF+KdLpoPhpZRspi5vC/hyF9z
         d5Bw==
X-Gm-Message-State: APjAAAVrFFwS/aKnxiBZ+D4nGSkChXA1HJMp7jOjRlsXRrxRGIM2qQFD
        vSz1MDXSfkOqsxWF9AtOoZMXbw==
X-Google-Smtp-Source: APXvYqzjGPQtE8Y6sHZG9JaqI1r/KJoOZFrWFWqe4IGv9iu7j2P2VgCYm0PYtma5uli6Vxi6rkdlAw==
X-Received: by 2002:a37:2e42:: with SMTP id u63mr6729022qkh.157.1569031143058;
        Fri, 20 Sep 2019 18:59:03 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
        by smtp.gmail.com with ESMTPSA id w131sm2150108qka.85.2019.09.20.18.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2019 18:59:02 -0700 (PDT)
Date:   Fri, 20 Sep 2019 18:58:59 -0700
From:   Jakub Kicinski <jakub.kicinski@netronome.com>
To:     Alexandru Ardelean <alexandru.ardelean@analog.com>
Cc:     <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <davem@davemloft.net>,
        <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: net: remove un-implemented property
Message-ID: <20190920185859.6ebf05f1@cakuba.netronome.com>
In-Reply-To: <20190918111447.3084-1-alexandru.ardelean@analog.com>
References: <20190918111447.3084-1-alexandru.ardelean@analog.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 18 Sep 2019 14:14:47 +0300, Alexandru Ardelean wrote:
> The `adi,disable-energy-detect` property was implemented in an initial
> version of the `adin` driver series, but after a review it was discarded in
> favor of implementing the ETHTOOL_PHY_EDPD phy-tunable option.
> 
> With the ETHTOOL_PHY_EDPD control, it's possible to disable/enable
> Energy-Detect-Power-Down for the `adin` PHY, so this device-tree is not
> needed.
> 
> Fixes: 767078132ff9 ("dt-bindings: net: add bindings for ADIN PHY driver")
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Applied, thank you!
