Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 54ADA6CEE8
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2019 15:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727757AbfGRNcz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jul 2019 09:32:55 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:40085 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727730AbfGRNcz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jul 2019 09:32:55 -0400
Received: by mail-pl1-f195.google.com with SMTP id a93so13881783pla.7
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2019 06:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uqxz+usfl5ubj3CY3zFZBVpUWMAMZReFb13uG+VpKhk=;
        b=hPqS/jwhlV8EqhLP0aNxajg3nw71noCAX1/ZuMg4djXDXUHMy83pViQuk66otWawgh
         QvqQUQpUEcJUoZQKzu/mN/zWhR9WBIelcCch2TjXF7u8oeYS5SB00SniIg+kzuloS8i8
         Vom1N8SpJ292Yqkuyg9SR5kQqhGhBTltovI8Wst87gWj1KRN9+6sYSCA8l1+iV9cEu5a
         +WkglCJ2pyQWqWQ8plPw8cN4GoTNen5Bl4ATdffnlizNpiZ+CIKZaFtch3mhAeVt9mC/
         TBoraNGI/AekjUS6m6PbucpvPfYgsBxYJEPh5ncCZhsmhS3Z3V7c8M/1SHIoP2GewFk1
         iuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uqxz+usfl5ubj3CY3zFZBVpUWMAMZReFb13uG+VpKhk=;
        b=Bsr3C+DnoFHZyzBSdWXD41HkD4FeqZvPiTXCAvh8bPCV66eR7CSZYQRXkTCeHvSB85
         5RUjxwAdmF5cMXkYTjobRC9xvN8fTawr4nDOGS1I0ANKXe/6+Ium98YTIgMvcbOvV+yz
         SF2AfhTwP/4OOOcY++p1/KA1mgng5v10sLqGW5auBBlogaX03zvOcISQ7CE+X5JtL6wN
         8U2ZdgXnilwsVl0vHaWnBC9gYRA2zdvsrLkeRhc4dfVSsOchobqV+b3/7rZEd8autyaC
         CRIXGfol3HYO2OplMLJCcJEDxQZIolW7+QFCgxjxJgxapAr961wbsSYsBFtP4snzPREG
         zeVA==
X-Gm-Message-State: APjAAAV7BRksPRLNBCXuiIjuAY/V2iFcfcyd06vJSYQn4U/LkN1jtlUA
        fqHu+CyIfW01jhjqdtFRBYRVIg==
X-Google-Smtp-Source: APXvYqzViISW7poxnkCViVCX0d/Rygfi5TgRGSdew6wPhEMa8Sdng7Fu1hFuwE/n73AS+seWku3KtQ==
X-Received: by 2002:a17:902:86:: with SMTP id a6mr50812360pla.244.1563456774644;
        Thu, 18 Jul 2019 06:32:54 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 131sm33059190pfx.57.2019.07.18.06.32.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 06:32:53 -0700 (PDT)
Date:   Thu, 18 Jul 2019 06:34:11 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Marc Gonzalez <marc.w.gonzalez@free.fr>
Cc:     Andy Gross <agross@kernel.org>,
        Jonathan Neusch?fer <j.neuschaefer@gmx.net>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        gpio <linux-gpio@vger.kernel.org>,
        DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
Message-ID: <20190718133411.GA7234@tuxbook-pro>
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
 <20190704163527.GJ12249@tuxbook-pro>
 <7431cf2d-4406-ff0c-331a-6ab82cf48b1f@free.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7431cf2d-4406-ff0c-331a-6ab82cf48b1f@free.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 18 Jul 02:30 PDT 2019, Marc Gonzalez wrote:

> On 04/07/2019 18:35, Bjorn Andersson wrote:
> 
> > On Thu 04 Jul 01:57 PDT 2019, Marc Gonzalez wrote:
> > 
> >> TSIF is the Transport Stream Interface.
> >> First, rename tsif1 to tsif0, and tsif2 to tsif1.
> >> Then squash all 5 tsif0 pins into a single function.
> >> Same for tsif1.
> >>
> >> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> > 
> > Thanks for the respin Marc.
> > 
> > Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Can you or Andy pick it up for inclusion in linux-next?
> 

This is Linus' subsystem, so I expect that he will pick it up after the
merge window closes.

Regards,
Bjorn
