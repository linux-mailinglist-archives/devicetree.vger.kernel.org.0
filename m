Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDFC54E695
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 18:01:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377461AbiFPQBW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 12:01:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376985AbiFPQBV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 12:01:21 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DA1C44A3C
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 09:01:20 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id x17so2452706wrg.6
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 09:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=l6OwqYcVIACsZfoSJ0T7YvBoL6yiGuqUoY7Ix6ahGSQ=;
        b=o4nMsZt/3jV1bsbk9nsN/ecHN5WUhbyFT9PWDtATNmBNXrGf7rOl+M5dtAjs83fugk
         WZ6S8tq+4j5Ishf6mCZHybXewU2U/aReOQDk1Q8jU7jbDRasM8aGLxRWr1q9DeQArLic
         Ruj5druGcI9zlEIs3TJA4aZXspP1HMVYan6KsruCiy7vLugaav9W7lX5Rx6KlB1el8tF
         I52NepB6ZKWbfyRJzwjfYKo7cdsjeBDYsOU2oPV/eF9rFsImZbdJdEW/HUBwpKiXYtVM
         RouWhcMgiBJu7YSYW9Soe435zGlrgnKSvn9LHJVjqrkRCLaqsuekrc/uuxtZH2fGaKKm
         Bb1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=l6OwqYcVIACsZfoSJ0T7YvBoL6yiGuqUoY7Ix6ahGSQ=;
        b=CefHUGt0e5vW+re7yngrGsv+I9b9K+uho+Emiw3B3YwLGJBpeXOO3DFPEwbV8T+mMu
         kwCdEyy0F82jWbG8oowa/XeGlnsZUz+Lf81uKCK91etJjJsn0gBwsk6i2jgqYiOz1Gru
         vOo7uq1QXi5BQj70DAxce5XYnzSOj/WoyajVE8q+UwwEZYYEcxlv0n1XsrKpj0EQLd3G
         JbNHABO98csVY8PXaOfKhd9UVGU/g2GrAEQBCRtSUXcI4CeZgmvZLhZtRCkY+GwAvRDM
         Dtp40YPWliJXs/HkwXG1UsZ4rZqmp8fCB9OqIN1bK4Y4+cmcN6oGkIO84V0aQK2c3Dhh
         6csw==
X-Gm-Message-State: AJIora+AqtmfAeUMkOYwVFnlzcLSeIxwXShz+ekDZCiULc0JZT162YeZ
        YOnVi8eHiGz1WOkOhfXjfw2euw==
X-Google-Smtp-Source: AGRyM1u9gA1o+7EK8Vgjpe4hz7z3siOeBw4UIC8/3U6wBAbdnEG2jInGiZrrqjOkugY37LUKfHlfEQ==
X-Received: by 2002:a5d:6348:0:b0:213:3a8e:e75d with SMTP id b8-20020a5d6348000000b002133a8ee75dmr5111561wrw.55.1655395279032;
        Thu, 16 Jun 2022 09:01:19 -0700 (PDT)
Received: from google.com (44.232.78.34.bc.googleusercontent.com. [34.78.232.44])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c430700b0039c2e2d0502sm6048461wme.4.2022.06.16.09.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 09:01:18 -0700 (PDT)
Date:   Thu, 16 Jun 2022 16:01:17 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, vdonnefort@google.com,
        Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v6 2/2] misc: Add a mechanism to detect stalls on guest
 vCPUs
Message-ID: <YqtTzehgcxRpoiyF@google.com>
References: <20220616092737.1713667-1-sebastianene@google.com>
 <20220616092737.1713667-3-sebastianene@google.com>
 <YqsBN2qtjCkNtVM0@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YqsBN2qtjCkNtVM0@kroah.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 16, 2022 at 12:08:55PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Jun 16, 2022 at 09:27:39AM +0000, Sebastian Ene wrote:
> > This driver creates per-cpu hrtimers which are required to do the
> > periodic 'pet' operation. On a conventional watchdog-core driver, the
> > userspace is responsible for delivering the 'pet' events by writing to
> > the particular /dev/watchdogN node. In this case we require a strong
> > thread affinity to be able to account for lost time on a per vCPU.
> > 
> > This part of the driver is the 'frontend' which is reponsible for
> > delivering the periodic 'pet' events, configuring the virtual peripheral
> > and listening for cpu hotplug events. The other part of the driver
> > handles the peripheral emulation and this part accounts for lost time by
> > looking at the /proc/{}/task/{}/stat entries and is located here:
> > https://chromium-review.googlesource.com/c/chromiumos/platform/crosvm/+/3548817
> > 
> > Reported-by: kernel test robot <lkp@intel.com>
> 

Hi,

> The robot reported stalls on vcpus?
> 
> I think you need to fix this up...

The robot reported some issues on v5 and after fixing them it
recommended to add this tag.

> 
> greg k-h

Thanks,
Seb
