Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 149206C47BF
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 11:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbjCVKfb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 06:35:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230128AbjCVKfa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 06:35:30 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64B2A52F57
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 03:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679481282;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=sAw1kb+1MttUiaf7ZI4njfkrYYVFnkuOfRgsWc6OSNg=;
        b=U6ADbOB4labQQJP4oCd8f2cIwF/qRaceJ4ZvcuhHtpEgp5WllQoiF+St++w+JgVfcsbvCE
        02TNrKQBMf5SzTLRtdcmzhaV44UNtzPX4NCZ7LjiyDs0msxAf8E9xFInSeqwYFKohZ25ni
        wKB8HQhsZlMQa/Bxqd7U/0J1dG/d/3I=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-443-PfMUzjwmOz-d-sD7wsfW4w-1; Wed, 22 Mar 2023 06:34:41 -0400
X-MC-Unique: PfMUzjwmOz-d-sD7wsfW4w-1
Received: by mail-wm1-f72.google.com with SMTP id o37-20020a05600c512500b003edd119ec9eso5105567wms.0
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 03:34:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679481280;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sAw1kb+1MttUiaf7ZI4njfkrYYVFnkuOfRgsWc6OSNg=;
        b=RrvTREm/pOekxGPuBzf9jfnabSImTMrlIGqNt4qzUjasIWpZS1Do/aG+UhkTHalWTV
         roFAc+a0vk4QPbM3c1nf4bAWtAZAY41BtSyKITODoshLIaSJyZNwUHCmScfy55jaAF17
         bM/uiaM38j+kbM6udZ/FXddNzJLs8mvIs9QoJYGQi6j/t0DdBszTwSpU1Op82D1StWv1
         3vOMo8g3+TFL9AnDAzJLmqhKMPeEug9alfPxxWgODWTIqyuY9y1iIz73GN/NLUTphOnP
         axQgzSuA5UVsWb9dWtohYmsCtuOqa/7njpPX7XNBVPE3IThCjyPY1acS6ALuZSVsABL+
         RKRw==
X-Gm-Message-State: AO0yUKXN7dfU76Vu348yRNl5sfEpRif7jbhgR8mqOaLKfjD+uSYPACE0
        iN5BZ7UenD6rMVPRHgRbMUlYbsO4Jv9STdRQIBRG4n4ZDjxS5AmQPZ51aWjwDCon2rowE4jQ6Fa
        Sz8oK/zsnwAa+9OshUMe3wQ==
X-Received: by 2002:a05:600c:ad3:b0:3eb:2b88:9adc with SMTP id c19-20020a05600c0ad300b003eb2b889adcmr4782452wmr.25.1679481280059;
        Wed, 22 Mar 2023 03:34:40 -0700 (PDT)
X-Google-Smtp-Source: AK7set9OJEunbX5gMc6MC+xeRbrZtBcXx8fDHwdAWSwBMT23hK8lYvS2ivGhxvkhzDa1tAAGkQFT7w==
X-Received: by 2002:a05:600c:ad3:b0:3eb:2b88:9adc with SMTP id c19-20020a05600c0ad300b003eb2b889adcmr4782415wmr.25.1679481279722;
        Wed, 22 Mar 2023 03:34:39 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id x33-20020a05600c18a100b003ede3f5c81fsm10182838wmp.41.2023.03.22.03.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 03:34:39 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Matti Vaittinen <mazziesaccount@gmail.com>
Cc:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Shreeya Patel <shreeya.patel@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>,
        devicetree@vger.kernel.org, Zhigang Shi <Zhigang.Shi@liteon.com>,
        Maxime Ripard <mripard@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Paul Gazzillo <paul@pgazz.com>,
        Maxime Ripard <maxime@cerno.tech>,
        =?utf-8?Q?Ma=C3=ADra?= Canal <mcanal@igalia.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <dmitry.osipenko@collabora.com>,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, kunit-dev@googlegroups.com,
        Stephen Boyd <sboyd@kernel.org>, Emma Anholt <emma@anholt.net>,
        Liam Beguin <liambeguin@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Gow <davidgow@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Brendan Higgins <brendan.higgins@linux.dev>,
        David Airlie <airlied@gmail.com>,
        linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 0/8] Support ROHM BU27034 ALS sensor
In-Reply-To: <ZBrSCYp+QrHK47dS@smile.fi.intel.com>
References: <cover.1679474247.git.mazziesaccount@gmail.com>
 <ZBrSCYp+QrHK47dS@smile.fi.intel.com>
Date:   Wed, 22 Mar 2023 11:34:38 +0100
Message-ID: <87edphnkg1.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andy Shevchenko <andriy.shevchenko@linux.intel.com> writes:

Hello Andy,

> On Wed, Mar 22, 2023 at 11:05:23AM +0200, Matti Vaittinen wrote:
>
>> Revision history:
>> v4 => v5: Mostly fixes to review comments from Andy and Jonathan.
>> - more accurate change-log in individual patches
>
>> - copy code from DRM test helper instead of moving it to simplify
>>   merging
>
> 1) Why do you think this is a problem?
> 2) How would we avoid spreading more copies of the same code in the future?
>
>
> 1) Merge conflicts is not a bad thing. It shows that people tested their code
> in isolation and stabilized it before submitting to the upper maintainer.
>
> https://yarchive.net/comp/linux/git_merges_from_upstream.html
>
> 2) Spreading the same code when we _know_ this, should be very well justified.
> Merge conflict is an administrative point, and not a technical obstacle to
> avoid.
>

I believe this was suggested by Maxime and the rationale is that by just
copying the helpers for now, that would make it easier to land instead of
requiring coordination between different subystems.

Otherwise the IIO tree will need to provide an inmutable branch for the
DRM tree to merge and so on.

I agree with Maxime that a little bit of duplication (that can be cleaned
up by each subsystem at their own pace) is the path of least resistance.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

