Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4C699B2456
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 18:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730126AbfIMQrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 12:47:43 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:33256 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730331AbfIMQrn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Sep 2019 12:47:43 -0400
Received: by mail-pl1-f194.google.com with SMTP id t11so13484461plo.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2019 09:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O2GrZSCWrGyTvU5B/RJG4lzDoBeHKSl0cnXPuD6j5Ww=;
        b=dCdFJVPRnuKvPqm7/HrWrh/QdrJEjpQdMC+Ed9rsYxbh1kRzr6HsOSKreT8+Ty7Kyd
         RyfTnUmDPzP9+l8/sY24MhB8uUdQW+O50kVmcIlkQhKQd6YDTBVOfuLGLM1sAdXfBukL
         hprMlbZn+Ao+TkhwaL76RvOuZ9BCK5vQYU4wb8kwWOJf6Z+e8WbvxZpCM/pSd7HkyrOf
         H1TTfCsP23M4iEG3lWUn1MTUVVzhEOb14M2i2J4E4p7AbEQRZ68jvm/updzs84fynH1d
         mlrKxPx+2/aABifiY35WaMi8roQQwNp1/wVZFOXhy+31c5AXlJN0v13H6nlDPVLDvQa3
         +Eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O2GrZSCWrGyTvU5B/RJG4lzDoBeHKSl0cnXPuD6j5Ww=;
        b=Jl5OpJHqnQ5Ma7YzHIYWewXZQCPncaMVSVyH5gSsJOviK1yvKRl2ETL6dgESVStot8
         czmt8fIb+GNjChd+dq6KiWN/CPcucGO2/O0uFBCqQzB1XaHtoo5gSOMSjkIQ/0Sv7HXp
         ClBnkRsyW/9AipAg4smCYtTUgTFEmnvspU8C/ux9CBBFEgqAmAq32Og/ZOGbK0r1BpQT
         o3/5AkLJ2PG5oi9h9ju4FNLk0vz5HGm3BhFjdtPk3fVIFdjj52hKLGt5SEuKT1fLUulO
         ifO8QSstgc3kXITvvujVoCOg1PSWXH5JT5iUrc6z7KA9jE2EZ3+mHkCuav/nyQjlewMW
         wzqA==
X-Gm-Message-State: APjAAAUbubd+l+/nIxJ2qlL7mpe8qPM9Xz979DP2bmd5EIrdEGF61iHg
        jsPdZCtN0TJjJlEiA4T9TjztEg==
X-Google-Smtp-Source: APXvYqzCT2ZHq1pz5aqPi5tYLzQFiM+ozl2W/CkKQWfKF1qwLfAt7FbJn2Pxm8l9A/GMmyWGXxj2gQ==
X-Received: by 2002:a17:902:581:: with SMTP id f1mr49614453plf.246.1568393261984;
        Fri, 13 Sep 2019 09:47:41 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
        by smtp.gmail.com with ESMTPSA id j126sm25738962pfb.186.2019.09.13.09.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2019 09:47:41 -0700 (PDT)
Date:   Fri, 13 Sep 2019 09:47:36 -0700
From:   Brendan Higgins <brendanhiggins@google.com>
To:     Eddie James <eajames@linux.ibm.com>
Cc:     linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
        joel@jms.id.au, andrew@aj.id.au, robh+dt@kernel.org,
        mark.rutland@arm.com, benh@kernel.crashing.org
Subject: Re: [PATCH 1/2] i2c: Aspeed: Add AST2600 compatible
Message-ID: <20190913164736.GA52781@google.com>
References: <1568392510-866-1-git-send-email-eajames@linux.ibm.com>
 <1568392510-866-2-git-send-email-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1568392510-866-2-git-send-email-eajames@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 13, 2019 at 11:35:09AM -0500, Eddie James wrote:
> The driver default behavior works with the AST2600. We need a new
> compatible though to make sure the driver doesn't enable AST2400 or
> AST2500 behavior.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Thanks!
