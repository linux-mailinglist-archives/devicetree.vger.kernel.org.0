Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAFC8D0472
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 01:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727769AbfJHXvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Oct 2019 19:51:43 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:39124 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726068AbfJHXvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Oct 2019 19:51:42 -0400
Received: by mail-pl1-f194.google.com with SMTP id s17so125916plp.6
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2019 16:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HymENB8AG8ufizSe/L4b4bXByTy1SdlqegKFgCo0vbY=;
        b=t+BlNhct5Z9xKtuP7jrgnvdFPiJnuE7rJZvIaBxfsU+Ma3OuVmYqxxywPBpDSp/4O7
         n8ZBdmZU1fP5/qV2t9eikExcNLCxNplW6F7OO5sGm95uBsYAOzzPLWAL+qujkahv+J7Q
         z1mP2wwUPOxYzrf0fX19WzFVX5ETIqteKMCtmnfHmM/P0/h+RrHITLskgxzDHs2J1srX
         qv2TKT7a5XlawzqsY/hkDTb0g/0CJW/fXdxAC4l7/nNBzjp/ggYwdw407BN3uI8UFBTF
         X/IzEvbtFSimvZxWKq1IFUCtAWwrQWjN9OsyJmTz3Qpz2m4JN+7Rn2ztiacltEWZijPs
         HY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HymENB8AG8ufizSe/L4b4bXByTy1SdlqegKFgCo0vbY=;
        b=LWduw11P5P8VM1s8Rh7P8eX25Zl/Fq6Nu58sn7pAO/pAQpx715IVMe0yw1J6SEjUxG
         NX/olHJxmtwWgY42w0By/qppUcSd02S5YyJ5ndbrAoJ845TW/i1wpZJHyCuL3xNyhaVw
         +OnR8AnenLVXdS2knYOFDlhej0hUnJRHQmWWrlg8CHU0t3C3Vc00zD8MCfT9hIqy4pGG
         rz2XvHmc+BvZFDXQr/DBq4g3+llEL4pLV8bg4mEOyGAvk6GYd6A8DBqF5Wz4itQScuvL
         R1zx4YjQ4+zQQRWdq1ZlNAcxqOHLrt0eBHpw+UKgecMiBla/Y1MP5nPvQza8/7jwvNAo
         iM9Q==
X-Gm-Message-State: APjAAAWHlhW5alhPuaKS6X4miue6JoF82pyaCcEyYY1Oe6i5dw2+N9uF
        Oyo+wbSsXzYL29yMJKY+kvC3vg==
X-Google-Smtp-Source: APXvYqw+pEeNGzD0nY+968srFsTK3zQ/UJgiBALiDL8faTpcDCC1upPAqXvaAFAk2A9U/3ZspPPGWg==
X-Received: by 2002:a17:902:b713:: with SMTP id d19mr175890pls.245.1570578701839;
        Tue, 08 Oct 2019 16:51:41 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id s3sm259517pjq.32.2019.10.08.16.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 16:51:41 -0700 (PDT)
Date:   Tue, 8 Oct 2019 16:51:37 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Jack Pham <jackp@codeaurora.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp: Add SM8150 QMP UFS PHY support
Message-ID: <20191008235137.GM63675@minitux>
References: <20190906051017.26846-1-vkoul@kernel.org>
 <20190906051017.26846-4-vkoul@kernel.org>
 <20191008074619.GA20801@jackp-linux.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191008074619.GA20801@jackp-linux.qualcomm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 08 Oct 00:46 PDT 2019, Jack Pham wrote:
> On Fri, Sep 06, 2019 at 10:40:17AM +0530, Vinod Koul wrote:
[..]
> I was thinking of taking a stab at USB if I get time, not sure if that's
> already on your or somebody's (Bjorn?) radar.
> 

We only have remote access to the hardware, making it rather tedious to
do USB. So it's all yours! :)

Regards,
Bjorn
