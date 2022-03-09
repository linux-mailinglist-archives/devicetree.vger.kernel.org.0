Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CF594D2DA1
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 12:07:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231588AbiCILIW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 06:08:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231186AbiCILIV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 06:08:21 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A00C16EAAD
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 03:07:22 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id p17so1624778plo.9
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 03:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=GLJWgSjpL4AJbuDEGF6NGRPWdFEMcqQSg2kXliO5hus=;
        b=R+d/qGWeT5qXfRaxjp8CLmUjwJTwOQYZk/aL3Pudw7PNp1skPxoqIcZx8tZC/AsCBu
         OZkUXE3WW5HBfguS2vZNquGWQUqu15bjm/HznCdGFFQiiHyGbZK5Un2C30yuIxQtUEdj
         AiLO91WrQmy4dBDphQWVvBG/bG6Cc8GAACx1XVCJpgoAgS40cAae7EvLzNV+CkpG5tjE
         ykxC8CI53DCPmj1mzpqeUrOdLjqIay9qsDM0DKl11wfpPPhoTgXnqA/5pamPT5AJiveq
         FH8Q4VN71mgf5TRXSDUw03F/4dz8iLk7hqQT1D7iZ1YwIJ1+v51qgqxkk6GXUr16eLje
         L34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=GLJWgSjpL4AJbuDEGF6NGRPWdFEMcqQSg2kXliO5hus=;
        b=xei6UF4VFp3m4B+G2M7ofMqcwjr8A/85TI53bCl9rW4FbPNaunXe3cZJaxeouAaqGC
         QJcqio5jL4f6eFRjpIFL8Ns3zdJq50wfZTj/rT6kcnPNHQKHdXuWwY0HPRNHP2y4MI7d
         LytDRSamSwNv0L8wgyBGWOGs/97jLg7S0K+HCxYnhuNf1LlSgilmImLJ41TSoK9jea13
         vBlPVHKa3kjz9xUIhzSyxFBXKY7LXejXxoQm4wY0+I2iUlnOtMGK4UocnrMO2ioppfZ8
         fCizgGcuKYZDZ2uoeQvSkQ1Ad5J2ZCOhrIADANxCwDtTAlBbwiARxKmoHGvUdZUOOkgr
         6hnw==
X-Gm-Message-State: AOAM533GCzyCwVXx5xzxEBbuwLrNxL7chMrXjBaoZr/zNI7FiEJlys09
        XVyEdH27PQTrEfRm4rZvsRU3Og==
X-Google-Smtp-Source: ABdhPJzwG3BRXkYf6NwrB7hwcCNkzwY8m//tw1wMLbbQiSMQXSj6BcATixtWdlPpj0lBrkWRiwbo2Q==
X-Received: by 2002:a17:90b:4b06:b0:1bf:8e05:84a9 with SMTP id lx6-20020a17090b4b0600b001bf8e0584a9mr7496823pjb.27.1646824041650;
        Wed, 09 Mar 2022 03:07:21 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id d11-20020a056a0024cb00b004f725ecf900sm2627557pfv.97.2022.03.09.03.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 03:07:21 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org
Cc:     =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        devicetree@vger.kernel.org, Benoit Parrot <bparrot@ti.com>
Subject: Re: [PATCH] ARM: dts: dra7: Fix suspend warning for vpe powerdomain
In-Reply-To: <20220308102103.39086-1-tony@atomide.com>
References: <20220308102103.39086-1-tony@atomide.com>
Date:   Wed, 09 Mar 2022 03:07:20 -0800
Message-ID: <7h5yon9yfr.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tony Lindgren <tony@atomide.com> writes:

> We currently are getting the following warning after a system suspend:
>
> Powerdomain (vpe_pwrdm) didn't enter target state 0
>
> Looks like this is because the STANDBYMODE bit for SMART_IDLE should
> not be used. The TRM "Table 12-348. VPE_SYSCONFIG" says that the value
> for SMART_IDLE is "0x2: Same behavior as bit-field value of 0x1". But
> if the SMART_IDLE value is used, PM_VPE_PWRSTST LASTPOWERSTATEENTERED
> bits always show value of 3.
>
> Let's fix the issue by dropping SMART_IDLE for vpe. And let's also add
> the missing the powerdomain for vpe.
>
> Fixes: 1a2095160594 ("ARM: dts: dra7: Add ti-sysc node for VPE")
> Cc: Benoit Parrot <bparrot@ti.com>
> Reported-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Thanks for the fix.  Verified on beagle-x5.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
