Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BB514448BD
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 20:09:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbhKCTLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 15:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229697AbhKCTLq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 15:11:46 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20045C061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 12:09:10 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id s136so3212186pgs.4
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 12:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WVrPpkdTzhDGLrhA5Z/ovSvHnNrtCVJCnuW2ije/BNo=;
        b=XFuLVEEBWPt6cX7eHBcQzMnSzVuB3PTVgmASaQjC7F7bkh9guLSL2LYrna+4qOUi0c
         GNP3kfhWHiB1Gk8Lob7Ron8UfFRf0G5ltD08TbmcfU1qBxFjDua0YK38bgWVwsVNato1
         jTZkbmg60JjIqiKeQCOnrT0z6xWHFymw8s3DxQzMCJ/y05FioUJEu8bNHBDmi7Q7K0ea
         ThQ9A4/iBGWp3ElcODdg2Wmww5oAH1mUJ7Qj084THOXrZVDIGy3T62bqK3XJegkAhWw0
         ZRAV+STV5ivutJ9jPyoGzLvPZUkfYOjQan64qL408NlcJpD4NDB644Twke2IYZZlRF7v
         20xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WVrPpkdTzhDGLrhA5Z/ovSvHnNrtCVJCnuW2ije/BNo=;
        b=U0ozVmgIeMjd63mUAkqXYq+wAfGC+d39VbrX4Rvb4Ag+fFPabGj+GP0ACACxcLSznp
         eR3li+KpqgFjxISbAghl0IR3WiqWLXGAr1navh/mymJzhtbNdKvs3gZmyQPjKQXog1SA
         ev++TdIy1c1MsMrV9KJ74VHWD/JuVi405EKIdo9UCoRrL2UBatLbA7xUZYttmFnuVngZ
         5p9R8WNGauHXCc6/l499VuOrcQLEw7eOAelrbRV36kToqKpc/EYlcdcfbIlUjP5LILJO
         yBhct0d+dKeQlpjyNqwCyA+kJTGKQ9JS1KJ8ftzm4z1EgOYwBW8uyLFetyshLByXtVst
         hmqQ==
X-Gm-Message-State: AOAM5312snYjXhBUlhhkLXrIOmV51eYFE+NvIVBd0rLyQItXR1aQyVyH
        yo0YW3n+P4Uh7SRcCU0NkHQZhhvrQKk=
X-Google-Smtp-Source: ABdhPJxl+Z+RGJlK3EnVKxKUyqtXCNxDGr0Q3q8Kvb33b7SJfGa+gjdRbv08xqZ4RHmrXv//SBSEoQ==
X-Received: by 2002:a62:ea16:0:b0:47b:f3d7:7a9 with SMTP id t22-20020a62ea16000000b0047bf3d707a9mr46375168pfh.60.1635966549627;
        Wed, 03 Nov 2021 12:09:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id on13sm2526064pjb.23.2021.11.03.12.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Nov 2021 12:09:09 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     Alvin =?iso-8859-2?q?=A9ipraga?= <ALSI@bang-olufsen.dk>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: BCM5301X: remove unnecessary address & size cells from Asus RT-AC88U
Date:   Wed,  3 Nov 2021 12:09:07 -0700
Message-Id: <20211103190907.193743-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026165703.17997-1-arinc.unal@arinc9.com>
References: <20211026165703.17997-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 Oct 2021 00:57:03 +0800, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Remove the unnecessary #address-cells & #size-cells in the gpio-keys node
> from the device tree of Asus RT-AC88U.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
