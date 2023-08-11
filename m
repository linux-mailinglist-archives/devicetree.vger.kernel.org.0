Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 621AE7798F4
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 22:56:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232555AbjHKU4x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 16:56:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231685AbjHKU4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 16:56:52 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E15AC
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 13:56:51 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1bc83a96067so17761335ad.0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 13:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691787411; x=1692392211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SGS8qetysZI/xubNvlzNZcECPzi8Y5beVEhoTCGql20=;
        b=bpz5rrOB8dMu6WWNnYOXXAwIOIjBSjI7o2elghyuwXnP5DQLKx3iWPgixgTpKDWF1G
         EbqI2QCDyQ3ghd95YR8ukIj6Op2eGv3Z9CAQh8ccDEsKq4QJhnt/K+ptdRUeb+SrZQpU
         M450fT0Q5fDU4c95+lzi99xgNKXHLf/2GIja99c/jSOsg83A4CugiBNd3gE5Wt9EQ/Wh
         jgHFHQd3xz2cEPApwpjGJyFU5aDmFkIFmrMyNBN+ZSXKH0r+TYl3SCXRGYU+x6JCMlJN
         xLuTjWZYjEyCjnSdgaioBMLUk+CFvuQczOrrtfs7/WouLfif+h4/Rqerv/mgRvacWQW1
         M9Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691787411; x=1692392211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGS8qetysZI/xubNvlzNZcECPzi8Y5beVEhoTCGql20=;
        b=ZWTJWgI9P//zSS1Oy6AVF9zp7u+GZG6tCcUyRrV4luN5dO20ieAu06dwFIElQ+jHAI
         H6H3vIolmtF+mrX9mhsbH38VeNin62n9KX67R/yl2knh8Wm+IOpT+8ZnZ0N72t7lYsA+
         eapQm7R0qjBowxVpc7auPtc/HITFPyX2isBZ0puFwbTpioZz8wyhErLISBO+X4+iJTim
         ChX8X3L4IoIShQTPrASClR8v9wNwsP40YANN2vfBoA8+ekvlyb56N8TGnUjFFze8y2JV
         LcPX5zJ/uKJEcdxCFvGbjEZgYGMIc44mx8/dh28I2bzoL7/E3FQt4Orfic7X4TCqmCIe
         URCw==
X-Gm-Message-State: AOJu0Yzgw+1kpOcTE5ECMTpoQhglWBK/dsVRebm8AkZ7KeA0zGMVsZ1K
        DaLFfyWjCYS5jLUts3LGz4pZmg==
X-Google-Smtp-Source: AGHT+IFWwzlZWGEa1qaJhVMxY4tldBHlHxQRTemKBJAviOEhIv+CzAGpXXWqZBF6EUGQ5FdiChtF4w==
X-Received: by 2002:a17:902:c94b:b0:1b3:8862:9823 with SMTP id i11-20020a170902c94b00b001b388629823mr2989679pla.28.1691787410964;
        Fri, 11 Aug 2023 13:56:50 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:5b85:b986:e090:9abc])
        by smtp.gmail.com with ESMTPSA id y2-20020a170902700200b001bbb1eec92dsm4358978plk.224.2023.08.11.13.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 13:56:50 -0700 (PDT)
Date:   Fri, 11 Aug 2023 13:56:48 -0700
From:   Drew Fustini <dfustini@baylibre.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/3] riscv: Add BeagleV Ahead board support
Message-ID: <ZNagkFWDdBSrQi1d@x1>
References: <20230722-upstream-beaglev-ahead-dts-v2-0-a470ab8fe806@baylibre.com>
 <20230811-unashamed-county-a3f662479f46@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811-unashamed-county-a3f662479f46@spud>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 11, 2023 at 06:49:16PM +0100, Conor Dooley wrote:
> Hey,
> 
> On Mon, Jul 24, 2023 at 10:20:37AM -0700, Drew Fustini wrote:
> > The BeagleV Ahead single board computer [1] features the T-Head TH1520
> > SoC. Similar to the Lichee Pi 4A series from Jisheng [2], this adds a
> > minimal device tree file to support booting to a basic shell [3].
> 
> What is the status of this series?
> Does Drew need to repost with the MAINTAINERS patch removed?
> Do you want me to queue this with the MAINTAIERS patch removed Jisheng?
> If so, I'd like to do so soon so I can get my PRs into Arnd a reasonable
> amount of time before the merge window opens.
> 
> Thanks,
> Conor.

Thank you for the reminder.  I don't want to miss the window so I'll
resubmit without the MAINTAINERS patch as it doesn't really matter.

Drew
