Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4E0EA567F6
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 13:53:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727335AbfFZLw4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 07:52:56 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35261 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727279AbfFZLwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 07:52:55 -0400
Received: by mail-wr1-f68.google.com with SMTP id f15so2417709wrp.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 04:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=pno/4ff/EmVlLZf+cwJB7HjSbJVtgJvFvXzyjJWjZww=;
        b=FrNk6Np4dKzBgiOqvrCZ9v1nd+0v7nIXo4/H33U5FzHgCYLYA7hOtdyTBWOdQOfNX+
         HHHdIpZFYCq/JEgJAPOlqWgVVH5FH0Htlv97hysKhCBtqAImccVHJyM7hmvvjtmBlO5J
         1XrPbvBR/SNIwt+CNPfox7kegKCZVc0GtF0J9p9QlRplCJktwjufwGWfa1a0VOvBluan
         vijqvZns8aBq6RG8cqZbQpEwGAu65ZB7lPyhQSdpj6KETAVoirRV21LbJLw6qB5yfcnG
         WbNKGD5apEUUHpkgiva3bhaZ4xPkax61wvAsSwaGPOyQM22WpthkyWzvdDCKu2I5kXfl
         f0Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=pno/4ff/EmVlLZf+cwJB7HjSbJVtgJvFvXzyjJWjZww=;
        b=fGV7mKipPxbWYGudFsPtH8ZIUpR+4RNfeXVC+O9tRgZ8uyr1eopaw+1pB1LJFCYRem
         XEId9/lJR5bT77ych7h2eheIA8lS1D0uLfCecyhAgLoe7zUgYZCdWW62sPotVjz1MBWi
         gMGzyiLcxt1eAWxQAFiohlHrRz+st3btI8INFllR1Z1FU76NS8G68aYXshoIpAccXrtV
         bn0iCwqw0PwsAKcQXfMaGNsYo+XwbJaGWDYx0d3XRJntIz8cVBMgWyBg+Nu3rz6O789M
         eXHRVKZ346XL1yRzaX4X/chxMnXesjd/o/yC1DEOKr0BSwhqJOXuZMfuuF6kiJlLyJsj
         T4Tg==
X-Gm-Message-State: APjAAAXVii85NE1BJ/iRfjTQgmH9zmpHJJT3TNBHa/aDPhw5k/Ap7Q7Q
        by4Jpk97FxYjcjI/gsY/hjFmeg==
X-Google-Smtp-Source: APXvYqzkue4b4T2/iz5KX/SFk9Swrlx2jlSbM8pLLMgMOTqmDRsgOwIKUpjFoXL5NkloPNPI8a1GxQ==
X-Received: by 2002:a5d:53c2:: with SMTP id a2mr3508180wrw.8.1561549973997;
        Wed, 26 Jun 2019 04:52:53 -0700 (PDT)
Received: from dell ([2.27.35.164])
        by smtp.gmail.com with ESMTPSA id y2sm14535504wrl.4.2019.06.26.04.52.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 26 Jun 2019 04:52:53 -0700 (PDT)
Date:   Wed, 26 Jun 2019 12:52:51 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Tony Xie <tony.xie@rock-chips.com>
Cc:     heiko@sntech.de, broonie@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, sboyd@kernel.org,
        linux-clk@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, chenjh@rock-chips.com,
        xsf@rock-chips.com, zhangqing@rock-chips.com,
        huangtao@rock-chips.com
Subject: Re: [PATCH v10 0/6] support a new type of PMIC,including two
 chips(rk817 and rk809)
Message-ID: <20190626115251.GR21119@dell>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190621103258.8154-1-tony.xie@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Jun 2019, Tony Xie wrote:

> Most of functions and registers of the rk817 and rk808 are the same,
> so they can share allmost all codes.
> 
> Their specifications are as follows:
>   1) The RK809 and RK809 consist of 5 DCDCs, 9 LDOs and have the same
> registers
>      for these components except dcdc5.
>   2) The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
>   3) The RK817 has one switch but The Rk809 has two.

Just tried to apply this set to a v5.2-rc1 base, but it doesn't seem
to do so cleanly.  Would you be able to rebase and resend please?

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
