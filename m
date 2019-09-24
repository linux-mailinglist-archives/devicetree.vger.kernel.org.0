Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4C46BD25C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 21:07:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2441840AbfIXTHN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Sep 2019 15:07:13 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:38607 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2441837AbfIXTHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Sep 2019 15:07:13 -0400
Received: by mail-pf1-f195.google.com with SMTP id h195so1913118pfe.5
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2019 12:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=yI20ESmRvXoTToo4YVcfDDcoV5v1nx5lGqojRvE9ORU=;
        b=K5arkwd0xs/VZSeWRsCAty8Qdy+IfBSQVFuXEZtmFnYrzoETMTK82c6fpPi5CwVNCC
         zKBzT0L0TTIpKrFGeMOZdnnxEGbaOhQl447I+dxIgiQc8TcKpMwNAEBCdloo9xFGtlqX
         d2qJdIb1sbkbFC37RWo1+KUfENx+7I1FtNHT4oKWRMD2Z2eDIwJafed6Jr1qEAxuzl+M
         XPgfBcttmwwtb/nCd8oo2lg0lXppANM9jj/GoBHDjN0Hjkh8z8XVkYz5vOE8p4VCy4F4
         El4+gcVAIq2WgrF7m/hBYywl6Y1G6jQ1UJqqgaL7CW5Qc3jxCkcprFQHzooJmMKcoE1M
         XOJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=yI20ESmRvXoTToo4YVcfDDcoV5v1nx5lGqojRvE9ORU=;
        b=Npl1U1I4bRxQY6tXkbfSncguFFgxI2e8K5YvinB2Vp8WzxzKFrrKzM1BfRnFbXWVLT
         h//r4up9fdeJD55mVcsVSiH1uw1m4+gF2OPf64LtMoxaZJwzkPYUmHoRMGERGYY9FMnX
         VmhpQGZ0E+SOvCo+nZ/G7VNGqgYdfKxdYiZp/2irpUuU+IDGszboEZMtI3zWfdPvwoIt
         qfA2ve5ahXTqUoSdndpR7OVHOXFZWRWlGTYuOnHfp4bX2M8eQ9ucNuM5GeciF1YQojDw
         4uxbZThWYdpw+1OrKlaIE7Q/kl9dh/+nQn+z4hauevieBPuL95xdkyZ8rrjx6439HxhF
         nsgg==
X-Gm-Message-State: APjAAAWD0LVxYQUrGuB4FQQj7r3vDrSrXsMD5wW9d0JhI7F9tj7/nJ3z
        HDrkHL9k6PDsHX0Dk6BXdn1qZw==
X-Google-Smtp-Source: APXvYqyDTGMQ/4hG0V6O79fuxEj2FmTcML6QD0E5bVYhERVC6KkggIhTEB4+w8bmJrnSN+ivxyXPFA==
X-Received: by 2002:a63:68c4:: with SMTP id d187mr4531647pgc.196.1569352032584;
        Tue, 24 Sep 2019 12:07:12 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id u10sm2835484pfh.61.2019.09.24.12.07.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Sep 2019 12:07:11 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jianxin Pan <jianxin.pan@amlogic.com>,
        linux-amlogic@lists.infradead.org
Cc:     Jianxin Pan <jianxin.pan@amlogic.com>,
        Rob Herring <robh+dt@kernel.org>,
        Carlo Caione <carlo@caione.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, "Jian Hu" <jian.hu@amlogic.com>,
        Hanjie Lin <hanjie.lin@amlogic.com>,
        Xingyu Chen <xingyu.chen@amlogic.com>,
        Victor Wan <victor.wan@amlogic.com>,
        Qiufang Dai <qiufang.dai@amlogic.com>,
        Tao Zeng <tao.zeng@amlogic.com>
Subject: Re: [PATCH v4 0/4] arm64: Add basic support for Amlogic A1 SoC Family
In-Reply-To: <1568276370-54181-1-git-send-email-jianxin.pan@amlogic.com>
References: <1568276370-54181-1-git-send-email-jianxin.pan@amlogic.com>
Date:   Tue, 24 Sep 2019 12:07:11 -0700
Message-ID: <7hzhit5x9c.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> A1 is an application processor designed for smart audio and IoT applications,
> with Dual core ARM Cortex-A35 CPU. Unlike the previous GXL and G12 series,
> there is no Cortex-M3 AO CPU in it.
>
> This serial add basic support for the Amlogic A1 based Amlogic AD401 board:
> which describe components as follows: Reserve Memory, CPU, GIC, IRQ,
> Timer, UART. It's capable of booting up into the serial console.
>
> The pclk for uart_AO_B need to be fixed once A1 clock driver is merged.
> In this version, it rely on bootloader to enable the pclk gate

Queued for v5.5,

Thanks for the new SoC support,

Kevin
