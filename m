Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 324D75331EB
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 21:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241060AbiEXTwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 15:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241046AbiEXTwT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 15:52:19 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08DE851E6D
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 12:52:18 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id z11so7940725pjc.3
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 12:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jqoWghnRf4IApUvhfymreoEWbSDArTcoutoZjM72nXw=;
        b=EO0wzmRiymk1VXgWWvRRc3IHLLstcNdXRpjX+Qa/zhBCeIa2SsovD9R4dbZnORQcKn
         0PZkzsed6rURkYHuk1sc0+T3gfc+W2e9X472k+b53Yvdk84aAiZALjWq3FaN5kE2PsYu
         7sH8pkQe344lomsZEo8R5RF/g6Z0uKDLmtsts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jqoWghnRf4IApUvhfymreoEWbSDArTcoutoZjM72nXw=;
        b=EHOLUlSUajpw4NwQkGuXka3/FyDKPoMhzkroRL/fEcDzgJ7tsBMekLRrd9sM2xoBOR
         e35yFtmGxzTNzlnTwgG05U0bVMZdAp/6Fm6ZrSbmQE+1TQ8X6p/wWw27c5p/6fScOhjR
         6pgI481+W6kVUda2SelTmH318jqn3YTAxFWaRFlBq8u2hA9Q0l815QKmTjYKC+JRqVCP
         XnPnzr2X09ZMdmbKpJDQueNozis0lWOW7bvlavua+MnVkhdKurVkyJvSrU1kYQ3jylR8
         kRpUYD21K7nvFPye2KEkhxKv8uW97oEKwrMhGDeqKjZbqsGz3Vf5PPIZRREGE54JwBYc
         BtIQ==
X-Gm-Message-State: AOAM530T3hPcWTWQGZenYMD9mnxOPUUNtjOub6LS/V1QxU0qO6T6wtpW
        N9QU/QtBYoi/+8HfOiCPDJz1Dw==
X-Google-Smtp-Source: ABdhPJxYA5tWQzLCi4DBahLvoLKWqro2fm9zEi8W+x+XadWNi0GLmwBwwM5KV4GMoCy0dGBpiZhVRg==
X-Received: by 2002:a17:90b:4b90:b0:1e0:1b0:1a1 with SMTP id lr16-20020a17090b4b9000b001e001b001a1mr6348302pjb.70.1653421937516;
        Tue, 24 May 2022 12:52:17 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:d9e2:8472:9ac:8532])
        by smtp.gmail.com with UTF8SMTPSA id t28-20020a62d15c000000b0050dc762815csm9767703pfl.54.2022.05.24.12.52.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 12:52:17 -0700 (PDT)
Date:   Tue, 24 May 2022 12:52:15 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Tzung-Bi Shih <tzungbi@kernel.org>
Cc:     bleung@chromium.org, groeck@chromium.org, robh+dt@kernel.org,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] platform/chrome: cros_kbd_led_backlight: support
 EC PWM backend
Message-ID: <Yo03b5GtGgF/kVb3@google.com>
References: <20220321085547.1162312-1-tzungbi@kernel.org>
 <20220321085547.1162312-6-tzungbi@kernel.org>
 <YobHVST2Nfn+z8n6@google.com>
 <YocewB/lLJhIAuQP@google.com>
 <YoezzzLdVfb0K7Ak@google.com>
 <Yosc/6izBDYYKpFC@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yosc/6izBDYYKpFC@google.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 23, 2022 at 01:34:55PM +0800, Tzung-Bi Shih wrote:
> On Fri, May 20, 2022 at 08:29:19AM -0700, Matthias Kaehlcke wrote:
> > On Fri, May 20, 2022 at 12:53:20PM +0800, Tzung-Bi Shih wrote:
> > > On Thu, May 19, 2022 at 03:40:21PM -0700, Matthias Kaehlcke wrote:
> > > > On Mon, Mar 21, 2022 at 04:55:47PM +0800, Tzung-Bi Shih wrote:
> > > > > +struct keyboard_led_private {
> > > > 
> > > > Why 'private', isn't this more a 'cros_ec_kdb_bl' or similar?
> > > 
> > > It is just drvdata.
> > 
> > The data structure represents an instance of the device, as such it
> > is an important part of the driver, drvdata is just a way to attach
> > it to the platform device.
> > 
> > > I would prefer to keep the original prefix "keyboard_led_" if you wouldn't
> > > have strong opinion.
> > 
> > I'm fine with 'keyboard_led', but object to the 'private' part. In the
> > kernel 'private' fields are typically used when a driver consists of a
> > generic part and a device specific part. The driver has a 'private'
> > void* field that points to a device specific data structure about which
> > the generic driver is agnostic. This data structure is only used by the
> > device specific implementation. That isn't the case here, so naming the
> > structure anything 'private' is misleading.
> 
> The struct in the case is device specific.  I don't see a problem to name it
> *private* as there are a lot of more existing examples.
> 
> $ grep -R 'struct .*_priv.* {' drivers/
> drivers/pinctrl/bcm/pinctrl-bcm6358.c:struct bcm6358_priv {
> 
> $ grep -R 'struct .*_priv.* {' sound/soc/codecs/
> sound/soc/codecs/rt286.c:struct rt286_priv {
> 
> I would get rid of the term "private" if it could be confusing.

Ok, I hadn't come across that use of 'private' yet, but apparently it's not
that uncommon. Personally I prefer variables with specific names, but maybe
for others 'private' just spells out clearly what a struct is about ¯\_(ツ)_/¯

> > > > > +static int keyboard_led_init_ec_pwm(struct platform_device *pdev)
> > > > > +{
> > > > > +	struct keyboard_led_private *private = platform_get_drvdata(pdev);
> > > > > +
> > > > > +	private->ec = dev_get_drvdata(pdev->dev.parent);
> > > > > +	if (!private->ec) {
> > > > > +		dev_err(&pdev->dev, "no parent EC device\n");
> > > > > +		return -EINVAL;
> > > > > +	}
> > > > 
> > > > The only thing this 'init' function does is assigning private->ec. Wouldn't
> > > > it be clearer to do this directly in probe() from where callback is called?
> > > > It could be with the condition that the device as a DT node.
> > > 
> > > No.  The probe() isn't aware of the device is from ACPI or OF.
> > 
> > But it could be:
> > 
> > 	if (pdev->dev.of_node)
> > 		kbd_led->ec = dev_get_drvdata(pdev->dev.parent);
> 
> The 'init' callback isn't only for OF but also ACPI.  I would prefer to keep
> the 'init' function and let probe() have no awareness about them.

Ah ok, then it makes sense, I think my brain conflated this with the unnecessary
keyboard_led_init_acpi_null stub.

> > > > Is it actually possible that the keyboard backlight device gets instantiated
> > > > if there is no EC parent?
> > > 
> > > It shouldn't be but just in case.
> > 
> > If this can only occur due to an error in common kernel frameworks then
> > the check should be omitted IMO.
> 
> The check is referenced from [1].  I would prefer to keep it instead of
> crashing kernel if anything went wrong.
> 
> [1]: https://elixir.bootlin.com/linux/v5.18-rc7/source/drivers/pwm/pwm-cros-ec.c#L244

Ok, maybe there are cases where the EC parent could go away. Let's hope it
doesn't happen after the keyboard backlight got probed :)

> > 
> > > > > +static const struct keyboard_led_drvdata keyboard_led_drvdata_ec_pwm = {
> > > > > +	.init = keyboard_led_init_ec_pwm_null,
> > > > 
> > > > Is this really needed?
> > > > 
> > > > keyboard_led_probe() checks if .init is assigned before invoking the callback:
> > > > 
> > > > 	if (drvdata->init) {
> > > > 		error = drvdata->init(pdev);
> > > > 
> > > > The whole 'else' branch could be eliminated if .of_match_table of the driver
> > > > only is assigned when CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM is set. IMO that
> > > > would preferable over creating 'stubs'.
> > > 
> > > CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM and CONFIG_OF are independent.  The stubs
> > > were created to avoid compile errors if CONFIG_OF=y but
> > > CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM=n.
> > 
> > Is there functional version of the driver that uses instantiation through the
> > device tree if CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM=n? If not .of_match_table
> > should not be assigned.
> 
> CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM and CONFIG_OF are independent.
> CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM is also designed to work with CONFIG_ACPI.

I understand that CONFIG_CROS_KBD_LED_BACKLIGHT_EC_PWM also works with
CONFIG_ACPI, but in that case the driver uses .acpi_match_table, not
.of_match_table. So you wouldn't have to define 'keyboard_led_of_match'
if you did this:

static struct platform_driver keyboard_led_driver = {
        .driver         = {
                .name   = "chromeos-keyboard-leds",
                .acpi_match_table = ACPI_PTR(keyboard_led_acpi_match),
#ifdef CONFIG_OF
		.of_match_table = of_match_ptr(keyboard_led_of_match),
#endif
        },
        .probe          = keyboard_led_probe,
;
