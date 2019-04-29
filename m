Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BFE5FEC68
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 00:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729453AbfD2WFF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 18:05:05 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:40733 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729443AbfD2WFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Apr 2019 18:05:05 -0400
Received: by mail-ot1-f49.google.com with SMTP id w6so10121681otl.7
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 15:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=uR3300n4kdwjtB1bOjQIdDPBSWIRWWuEwGdZNtkC/Jc=;
        b=Oz4+NAp4iO3Rb3LxHzRS1WLhQLvdd3ZbwPWCju8dPqDJm9rRFAZnNUNLn/7OBpzi22
         wxL3sh8rqFW6ervHE5OcrdQzpukyILZMd/TaY1ubCh6lem87r/HvOyFMxHQqHv1kWPB2
         AARY4eb7QCydPeRZDYoIxFVSkp555qrxbhgjYJcZNgZhuF53w+tFVJ4kz+ZrCZRKKSZg
         YqYacu8K1NsB/D8SGuB/TUlO02fHZfiXRFwIg1VJwA5ZQmEzwT5pAkrZM5aOOh+gqfCj
         aURGRg9+kJ+qQ7zgVWANrE/idmuWYc4Ruvj0rIcHVZLuWienM2bLCA6nPxI8ccoW/NH4
         lLFw==
X-Gm-Message-State: APjAAAXlU0K5sNZ397vHRcrL+KTodm5WTmBSgq08l79Wx18af1z5xfhI
        WhRG0L9U6xkVeBTsWJQwBYUrKko=
X-Google-Smtp-Source: APXvYqwv1/4XC4qyQm3qaxPmbKkoJ6lzf9g/pZ2OkwY+1av6nApp7v4MPe0lBHG70QOj9VQN3Jj9Sg==
X-Received: by 2002:a9d:5c0f:: with SMTP id o15mr19936389otk.47.1556575504671;
        Mon, 29 Apr 2019 15:05:04 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t35sm14667410otb.80.2019.04.29.15.05.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Apr 2019 15:05:03 -0700 (PDT)
Date:   Mon, 29 Apr 2019 17:05:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>
Subject: Re: Question about compatible fallback and documentation
Message-ID: <20190429220503.GA4720@bogus>
References: <CAJiuCceeLwY+myYtUf15frSYsLKmGaUBifAOxUkNWwSjbF4oDg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJiuCceeLwY+myYtUf15frSYsLKmGaUBifAOxUkNWwSjbF4oDg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Apr 14, 2019 at 06:18:04PM +0200, Clément Péron wrote:
> Hi,
> 
> I have to bind an already existing IP by a vendor in a new SoC called
> "SOC3" device-tree.
> 
> In the 1st gen of "SOC1" the IP is introduced :
> soc1.dtsi :
> compatible = "vendor,ip-soc1";
> 
> Then a 2nd gen of the IP is introduced in "SOC2" with new registers.
> But the driver of the 1st gen is still working fine and no update of
> the existing driver has been introduced because not required.
> soc2.dtsi :
> compatible = "vendor,ip-soc2", "vendor,ip-soc1";
> 
> Finally in "SOC3" and regardind the user manual we think that the IP
> introduced is the same as "SOC2".
> Should the compatible in soc3.dtsi be A or B?
> A) compatible = "vendor,ip-soc2", "vendor,ip-soc1";
> or
> B) compatible = "vendor,ip-soc3", "vendor,ip-soc2", "vendor,ip-soc1";
> 
> I propose the solution B) because we don't know what could happens
> maybe the IP could need a quirks only for "SOC3". And device tree
> shouldn't move for the user only the driver.

B is correct.

Or you could list soc3 and soc2 given you do know there are additional 
features. That would require a driver update, but likely the new SoC 
requires some OS changes. Maybe someday SoC design will be disciplined 
enough that new SoCs are fully backwards compatible.

> Last question does we have to document all the compatible use in
> DTS(i) files in the Documentation ? or only the compatible used by the
> drivers ?

What is used in DTS files.

Rob
