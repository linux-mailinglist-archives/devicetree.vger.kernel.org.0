Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3300090AC8
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2019 00:14:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727761AbfHPWOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Aug 2019 18:14:35 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:35960 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727732AbfHPWOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Aug 2019 18:14:35 -0400
Received: by mail-ot1-f42.google.com with SMTP id k18so423188otr.3
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2019 15:14:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DWcv/vlPZ8cbcKNuxVoEumcHyCpOl15pAx8w8VHxahE=;
        b=LKRX4F5PrSxk+ZP/RthB1BRoo1ILkT0D7AYLA9/ClwfIETdDX4ESPUSsqInMWn7Z5P
         0L7461GJ++YGiVu9stNsyPgBowWczyWnbxRwVnrDSkOGZ4XcHVR8ba+ekKjeAFWjoVhI
         /Xu/CsBuxz+z5TGQPdfJIpbacJbeirZdXt/ZUKrwSOwnK1IQOrBnHjxEoZ169agi0Ffa
         5o5mPdOeN3jLk9wj0o4BNUXKVh4zLW3H01qVDAvM/YHOWRDxLzZtn6SmaP7hSwPzeA/+
         FYsXyIKNohqV6S9v+T/YH6rd40WkrpyDv8VCNUz7t2aH1g0SYSa3USEeL9UBNOriju/9
         FiwA==
X-Gm-Message-State: APjAAAWI+N+FZd5neoZ7eBn2jMakfaOeeipXJb9YSTQ03nIWGfYPJMce
        PG1248/41ZT2t5wXwPgDHC+x7iI=
X-Google-Smtp-Source: APXvYqybijkLGWM2is8fWmoPIVChnStiRXgwyVcET9GZimWr5B6g5tUsi6vCFnMIEvI07EttqNwr6w==
X-Received: by 2002:a05:6830:144b:: with SMTP id w11mr9361812otp.185.1565993674487;
        Fri, 16 Aug 2019 15:14:34 -0700 (PDT)
Received: from localhost ([2607:fb90:1cdf:eef6:c125:340:5598:396e])
        by smtp.gmail.com with ESMTPSA id v17sm1956432oif.1.2019.08.16.15.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2019 15:14:34 -0700 (PDT)
Date:   Fri, 16 Aug 2019 17:14:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        devicetree <devicetree@vger.kernel.org>
Subject: Re: DT yaml bindings: handling of complicated compatible property
Message-ID: <20190816221433.GA25289@bogus>
References: <CAMRc=Mc_9=3xYWrrn=naQgFprgLA4wkNJQE1niSiYiACi5XFiw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMRc=Mc_9=3xYWrrn=naQgFprgLA4wkNJQE1niSiYiACi5XFiw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 29, 2019 at 10:31:17AM +0200, Bartosz Golaszewski wrote:
> Hello,
> 
> I decided to attempt to convert the DT binding for AT24 EEPROM driver
> to yaml and am not sure on how to handle the compatible property with
> a lot of options.
> 
> In at24 we support 23 models and 8 vendors (184 vendor,model
> combinations) plus 5 exceptions (with model names not following the
> general convention).
> 
> Do I simply use the oneOf specifier and list all possible options? Or
> is there a better approach.

Normally, yes. But this one is a bit special. You can use 'pattern' to 
address the 184 cases with a regex and then the 5 exceptions under other 
oneOf entries.

Rob
