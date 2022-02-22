Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76BFC4BFEF1
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 17:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233368AbiBVQht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 11:37:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233103AbiBVQhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 11:37:48 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E9D0B5626
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 08:37:23 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id c9so4140878pll.0
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 08:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zJKFw8FqLa0/MDr6tt9GMe0RBKT3PW0n39OIwZ0O4uo=;
        b=HSv/LWTBxB/IblslEsOA5ur3tfXkJDxwQtRJaY5h7HjhMQiJhvdYboT9wp6E0bCH4I
         8DdvwAWi1QjDva5VUeH94r4awfv/mFIWAppR0qDT7qJhNf+p4mYlyZ2ywi2fQGitbv3m
         XYrCEqe9iOl5PTURBouiqxUOa/Y50iyXgsnXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zJKFw8FqLa0/MDr6tt9GMe0RBKT3PW0n39OIwZ0O4uo=;
        b=vU2F9sQCib1vnT7byJ//P9/kA92NjbTWKkICyu7mZwnd9XJ4ubwxvw0r3T4s2jBv1k
         SAgxMfeyzMb8wru+OujGo5UoZuTZ6sndjY8Ffb+Zkis/5E3yKPmE6iEinR0UsD0wpO7K
         fUCaJB09OyGKX0dvhcgKy6Zxka/sH2J+V+LoKV5YJmqF52E8+b6KcCtgTFKrxI7WATqP
         z4szeA27SO2L5sJjy05HN0LMk1bP6+LuRcMOohy35ODoEe+udVfILgS1BcBhk5YjqGbu
         iknxqGcUdJjlP8RNP+2HoPXwMcwe0rFQgi/tjiSqKHIqChRJMS0kv9PLyc84Y7EDnlsC
         Y3bg==
X-Gm-Message-State: AOAM531EXFL/ZSZ5eEHPwhcuw6+GE5FggusfZSHP+AoO1NsmB9Xbwk2t
        a0LdrkM7Lp/4klkQdVQ77ZVSWw==
X-Google-Smtp-Source: ABdhPJw2nkaf19Zt/2StCdOtfN8Vhu2UNXiJNU17qd0uLXleZFtIYo+1Nlv3kRC2irZouQGn7Cho2w==
X-Received: by 2002:a17:902:bf07:b0:14f:a3a7:97a0 with SMTP id bi7-20020a170902bf0700b0014fa3a797a0mr12887998plb.105.1645547842764;
        Tue, 22 Feb 2022 08:37:22 -0800 (PST)
Received: from localhost ([2620:15c:202:201:8ac3:6f5f:e299:2e9b])
        by smtp.gmail.com with UTF8SMTPSA id f8sm14392364pfv.100.2022.02.22.08.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 08:37:22 -0800 (PST)
Date:   Tue, 22 Feb 2022 08:37:20 -0800
From:   "mka@chromium.org" <mka@chromium.org>
To:     "Tao Wang (Consultant) (QUIC)" <quic_wat@quicinc.com>
Cc:     "balbi@kernel.org" <balbi@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "dianders@chromium.org" <dianders@chromium.org>,
        "frowand.list@gmail.com" <frowand.list@gmail.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "hadess@hadess.net" <hadess@hadess.net>,
        "krzk@kernel.org" <krzk@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "mathias.nyman@intel.com" <mathias.nyman@intel.com>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "peter.chen@kernel.org" <peter.chen@kernel.org>,
        "ravisadineni@chromium.org" <ravisadineni@chromium.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "rogerq@kernel.org" <rogerq@kernel.org>,
        "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
        "swboyd@chromium.org" <swboyd@chromium.org>,
        "Linyu Yuan (QUIC)" <quic_linyyuan@quicinc.com>
Subject: Re: =?utf-8?B?5Zue5aSN?= =?utf-8?Q?=3A?= Re: [PATCH v20 3/5] usb:
 misc: Add onboard_usb_hub driver
Message-ID: <YhURQAksLKVuzU36@google.com>
References: <SA1PR02MB86067ACF0C96F18B7306D208903A9@SA1PR02MB8606.namprd02.prod.outlook.com>
 <SA1PR02MB860660B6F33011E5A97F7930903A9@SA1PR02MB8606.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <SA1PR02MB860660B6F33011E5A97F7930903A9@SA1PR02MB8606.namprd02.prod.outlook.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 06:20:00AM +0000, Tao Wang (Consultant) (QUIC) wrote:
>    Hi,
> 
> 
> 
>    Regarding on board hub driver,
> 
>    [1]https://lore.kernel.org/linux-usb/20220119124327.v20.3.I7c9a1f1d6ced
>    41dd8310e8a03da666a32364e790@changeid/#R
> 
> 
>    I have one comment below,
> 
> 
>    +static const struct usb_device_id onboard_hub_id_table[] = {
> 
>    +       { USB_DEVICE(VENDOR_ID_REALTEK, 0x0411) }, /* RTS5411 USB 3.1
>    */
> 
>    +       { USB_DEVICE(VENDOR_ID_REALTEK, 0x5411) }, /* RTS5411 USB 2.1
>    */
> 
>    +       { USB_DEVICE(VENDOR_ID_REALTEK, 0x0414) }, /* RTS5414 USB 3.2
>    */
> 
>    +       { USB_DEVICE(VENDOR_ID_REALTEK, 0x5414) }, /* RTS5414 USB 2.1
>    */
> 
>    +       {}
> 
>    +};
> 
>    +MODULE_DEVICE_TABLE(usb, onboard_hub_id_table);
> 
> 
>    Can we support read VID/PID from device tree which provide platfrom
>    device info?

As far as I understand the kernel exclusively uses the VID/PID reported by
the USB device, the compatible string in the device tree is purely
informational (though this driver uses it for the platform device).

