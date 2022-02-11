Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BCF94B305C
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354063AbiBKWYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:24:55 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiBKWYz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:24:55 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26EBBD48
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:24:53 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id d187so18590041pfa.10
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=b8BpKUIV7G9pk4IhxQdYJZN2t2o+SEUzpUPBldDtOqM=;
        b=hIxpQ2dZ56wDvqKkzx6jG3wjVGdASRNisB9NPjL0sgQeaPLs3Yz1XHRhnvNe8MXadD
         rpwXjhmqSGmkQGm7oOkDhmqjJLh/l5N207vpL1tU1c0hs0yF3YaY7F12YLzrLEB+MerX
         3Rv2LuksTrviQS11lXvHnDXU9bqhKEIJN5DoV4SOGJ45FYtCF50N6jyVy6jzJDBl9Y2L
         ooBkeYEOgBk9BIRmd3Qd5sVyVNuw3ZhxoVJml2es27bdXO1pMX4Dacy9lQA36SB5yUFd
         JnI/IW6AkqXLeR/27BdH+sx1N/n07Uu9WXM334AusncUgVdBH9RS8wJXO9urjpjnzhuf
         nnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b8BpKUIV7G9pk4IhxQdYJZN2t2o+SEUzpUPBldDtOqM=;
        b=gNAckViwlzMSiveqb3sgjmSpQ1NCVviMqqpNmax3L85o27QIQRr5NEuO6IeeCMMrAW
         ZyTic9bkuYHwPs0KovabYWfFqS4D/xYaoXxc+aB/6x4LAG0qYXWHxtCbo2TWY9VAVnYM
         D6uCzqzdRRq0ufpoedNp14SRRy9p+Awf+pGiqZpbq0LZbeeLbk94whIhXkNcuhxY0/b/
         jQDCqVKpR+G7P7Q3tWzHhNYdPwEiYzX7Ix+p5RxaaSY2bcxvVAUFUU7VH7a52d1aoXQ0
         EWHz16c00/JpaF1gVDx5zXa8Tu7EthkYBMAswufHGc+APoTWJLSbEt0VE3Z3ZA4xFE3l
         pHBg==
X-Gm-Message-State: AOAM5324PO+vBVGdjvAUQyIYMNv8K1+Y4zk4sUButuNaXJ+y3dOzTdQJ
        AveEsMppcnjLYnZN3ftq8l4=
X-Google-Smtp-Source: ABdhPJwr3x7rZd29lxVZkZq/yd41tzuykYW0GwL7Vf2LiRga42YY9ZBBWUVgFefe9EuY0wG86Z2tsg==
X-Received: by 2002:a63:1666:: with SMTP id 38mr3017392pgw.499.1644618292610;
        Fri, 11 Feb 2022 14:24:52 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id rj1sm6612993pjb.49.2022.02.11.14.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 14:24:51 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Richard Schleich <rs@noreya.tech>, robh+dt@kernel.org,
        nsaenz@kernel.org, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: bcm2835/6: Add the missing L1/L2 cache information
Date:   Fri, 11 Feb 2022 14:24:49 -0800
Message-Id: <20220211222449.1144974-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220205195911.52578-1-rs@noreya.tech>
References: <20220205195911.52578-1-rs@noreya.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat,  5 Feb 2022 20:59:11 +0100, Richard Schleich <rs@noreya.tech> wrote:
> This patch adds the cache info for the BCM2835 and BCM2836.
> However, while testing I noticed that this is
> not implemented for ARMv6/7.
> Basically arch/arm/kernel/cacheinfo.c and other topology
> related code is missing.
> Since the work is already done and this has no negative effects,
> I am submitting it for future/documentation purposes.
> 
> Signed-off-by: Richard Schleich <rs@noreya.tech>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
