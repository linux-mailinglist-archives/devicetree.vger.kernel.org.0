Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0439355BA1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 00:50:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726385AbfFYWuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 18:50:04 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:32961 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725782AbfFYWuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 18:50:00 -0400
Received: by mail-lj1-f194.google.com with SMTP id h10so162729ljg.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 15:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oauyc528nBeA4aGB8HdudXwgvOR2M6xqw+qp8qrMia0=;
        b=bsG0SS1331T2u5dmwMsWL5Mj0pDUYEJeS3x/a7g8HquS+iweixO7wS7VJSEpoTi3qV
         nuPog56Of0ICCYrDywtGn1ibAaoMzBfJ0O2x753kYh6mwxaLA6pPl0WPqys4+kmd46Jq
         rIsYCCZxCs33VBJGmf++ljLlMwhKk4609tQym+TGgY8G9VfxrtJCGVeYE5q5Nv/EWdBb
         9YomnEjSNUKKZybvNhj4bcSAi4lFZCDmKYmnbBUBMoRe0luDo7+NKcilgdxESGUr6Bv1
         8oE2HePy+PkGqZW4W/Q7dVoNdKg3qs2bj61g5enDhyYdyoeki0viAd/yTw4AoSrs8h9J
         Q3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=oauyc528nBeA4aGB8HdudXwgvOR2M6xqw+qp8qrMia0=;
        b=IW0UbLo2kWYdss4OsSQwkA/GRWqyi5yQY5WucyRw1CjgnUZIaO1NDasxeNtDXBFhH2
         fS42sFRffVBnpCgrNn3yp4rsj+aEGIG9Hngeuh8Fx6BGbuFA1xavJNiObydDBKKYoWZX
         rLOT/vS/w7ZN33ZevuiPn9nQNZIp2D1d8wth+ukD+/zqn6cM14uu5o6sKTVIBPG/R+F7
         hPk/TTlE860dnnd5DAsSFvDOst4c2v3+nYBGp3oL2E448joWP26vth6n73DY3DGw+nR5
         YrZCQf/nLohDMuSz/k/Zv8SSn3JRlPzu14ZNTUgYTQo9HryTUF0bHOSFIV5WpDN1ECLc
         6NeA==
X-Gm-Message-State: APjAAAX75nDwF2Gq7grnMdo7ei73+kn8o5ygklGL52jAkR2Bo9pkxgPp
        cSkDyu4g4cbTUSYF+RDNxBi4og==
X-Google-Smtp-Source: APXvYqzz8flqZD3CtlEaWTG6dgDQmMup6wovwU1fK+ijn1DOb2NtHpvpDzMqmApGLfzEkGldQTuXAg==
X-Received: by 2002:a2e:b0ea:: with SMTP id h10mr575866ljl.50.1561502997676;
        Tue, 25 Jun 2019 15:49:57 -0700 (PDT)
Received: from khorivan (59-201-94-178.pool.ukrtel.net. [178.94.201.59])
        by smtp.gmail.com with ESMTPSA id w1sm1580368lfe.50.2019.06.25.15.49.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 25 Jun 2019 15:49:57 -0700 (PDT)
Date:   Wed, 26 Jun 2019 01:49:54 +0300
From:   Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To:     Grygorii Strashko <grygorii.strashko@ti.com>
Cc:     netdev@vger.kernel.org,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Jiri Pirko <jiri@resnulli.us>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
        Ivan Vecera <ivecera@redhat.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v4 net-next 10/11] ARM: dts: am57xx-idk: add dt nodes
 for new cpsw switch dev driver
Message-ID: <20190625224953.GD6485@khorivan>
Mail-Followup-To: Grygorii Strashko <grygorii.strashko@ti.com>,
        netdev@vger.kernel.org,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Jiri Pirko <jiri@resnulli.us>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
        Ivan Vecera <ivecera@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
References: <20190621181314.20778-1-grygorii.strashko@ti.com>
 <20190621181314.20778-11-grygorii.strashko@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20190621181314.20778-11-grygorii.strashko@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 09:13:13PM +0300, Grygorii Strashko wrote:
>Add DT nodes for new cpsw switch dev driver.
>
>Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>---
> arch/arm/boot/dts/am571x-idk.dts         | 28 +++++++++++++
> arch/arm/boot/dts/am572x-idk.dts         |  5 +++
> arch/arm/boot/dts/am574x-idk.dts         |  5 +++
> arch/arm/boot/dts/am57xx-idk-common.dtsi |  2 +-
> arch/arm/boot/dts/dra7-l4.dtsi           | 53 ++++++++++++++++++++++++
> 5 files changed, 92 insertions(+), 1 deletion(-)
>

[...]

>diff --git a/arch/arm/boot/dts/am57xx-idk-common.dtsi 
>b/arch/arm/boot/dts/am57xx-idk-common.dtsi
>index f7bd26458915..5c7663699efa 100644
>--- a/arch/arm/boot/dts/am57xx-idk-common.dtsi
>+++ b/arch/arm/boot/dts/am57xx-idk-common.dtsi
>@@ -367,7 +367,7 @@
> };
>
> &mac {
>-	status = "okay";
>+//	status = "okay";
?


-- 
Regards,
Ivan Khoronzhuk
