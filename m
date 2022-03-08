Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFB264D18C1
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 14:09:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232146AbiCHNKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 08:10:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235037AbiCHNKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 08:10:42 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF188B850
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 05:09:45 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id r187-20020a1c2bc4000000b003810e6b192aso1457401wmr.1
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 05:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jIHKyDto3VNe0jan3Q4InEbXVdDFGcIeT9QW9S/Z1yA=;
        b=jbpt5SwnC5KT4ZXh7IxtNsrgGcj7VVb16w1WO4pHVIMxgFqMDC2JVfEPhSd28qEdum
         FEhf6akwghJ1GAdNEziVNhjKIH5oZhPKAHZWQn6kvsYB/rvdJu07tyfVVUP6n59UEdZk
         a+sTDSQY7s5diyafXaq1avAkL4tv1Cp+14rasUL2eS3xOajI9/1d7j8SnSIO6wy42QFf
         DzGN68fI4s1xdo+a7Oa3NAQYmyxk0T39uRam8sUb6a5aU3aUStstOpNCALE5ceUStn7d
         e9YqUUHzXiq0Fu2QMKF1xi1HYTKkgTe6tmCUVMcZV3yg/ygNVYX8oG0ShH4xujfam9L2
         B5nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jIHKyDto3VNe0jan3Q4InEbXVdDFGcIeT9QW9S/Z1yA=;
        b=qd7slBzOz5yC09G5Z6ezPV5+BExDzmh2C92NLArpv6tCffAOZ0kA237VGd9RcG8k+M
         oXalcq1xIZxQYwtzUpcgvj+6b8aHdldz69uy38S4SOgYUjVtEK71kcMumjUa8iFgk7xT
         1cY4X1+sBDmCXLh66U1fCc/3vJoR8TmE8vRwMaUxb+U3jVPCi3qsGOZJIUYAEsYFHYmn
         TrycJsdxkyxpIQn2wjXGPtXIKi5VEJ8EA3zvCFwjhWuecw08Fa0VhrZK086RObUsqxYo
         H8q+mgCQ7XjSN/OUdQcUByeLhoX1/sS/P4hPwD+4xpNYbDD5xRTyVsZAq/RxjmG9y8UQ
         uFDA==
X-Gm-Message-State: AOAM533dMolwLKKx10te05t6v6tywXbPW7vm5gkboriwz8Z9iYNEKPMI
        leUXPaeMePiteFVlAqOtfkjj4Q==
X-Google-Smtp-Source: ABdhPJyMETb54ZQiFJs9pNCVwtDVfsBQoRRZgo7hsLXgxVZq02upIxNHSYYzogAJuAPCDIJ/7we1ew==
X-Received: by 2002:a1c:3b8a:0:b0:380:e40a:289 with SMTP id i132-20020a1c3b8a000000b00380e40a0289mr3481063wma.17.1646744984144;
        Tue, 08 Mar 2022 05:09:44 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id z6-20020adfd0c6000000b001f1ffd04672sm4048217wrh.12.2022.03.08.05.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 05:09:43 -0800 (PST)
Date:   Tue, 8 Mar 2022 13:09:41 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Johnson Wang <johnson.wang@mediatek.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [GIT PULL - FAO MARK BROWN]: Immutable branch for MediaTek
 MT6366 due for the v5.18 merge window
Message-ID: <YidVlV8Rg8N5TT8A@google.com>
References: <20220106065407.16036-1-johnson.wang@mediatek.com>
 <YicTu6FwOR7zIC6I@google.com>
 <YidQvkIYsacSPsXv@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YidQvkIYsacSPsXv@sirena.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Mar 2022, Mark Brown wrote:

> On Tue, Mar 08, 2022 at 08:28:43AM +0000, Lee Jones wrote:
> > Mark,
> > 
> > This one is just for you, so you can merge the other patches.
> 
> I don't know what the other patches you're referring to here are,
> someone's going to need to resend them.
> 
> I'm also not sure things like like "FAO MARK BROWN" in the subject line
> of the e-mail, I can already see if a message has been sent to me from
> the To and it means less of the actual subject is wrapped out of sight
> in my inbox.

Might be time to upgrade your VT100!

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
