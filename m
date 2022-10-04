Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BAE85F3D43
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 09:30:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbiJDHak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 03:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbiJDHai (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 03:30:38 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 657252D75B
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 00:30:35 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id nb11so26963925ejc.5
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 00:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yPfd3Jwd9rlaL0Pne53MMVojSqXI9G05BY139YmW+lk=;
        b=Ca4p3uuK71y+eMmACG00B8GkRIUI9jZUFqlyDeLV8jaWRAJnQzm8vnhB2KlJDXv6Ri
         9lqUAtjFTMUMEjqcDtUcHApGx8J2e4DtMk5MZZKVzKXLsb3lIq01JIRWx3kkpG1GStnt
         En56mIQXr4H+A9nuRF0iZC29egex4as+iA+1DanYegxUihLSjhbArn8w4WHdz1f5H3T5
         puCFpZuTA2h+J2HS75ko05iA5tSz0X24AhKnXb7Tpgq0WejCwsn+dt80hn081GgxyIig
         /0Sgtt5BZFtHHVdOOwqsI7tMvUNzV00zChCKe32uO5wNc5Hx/480fpBkeQniuGKYYlxu
         METQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yPfd3Jwd9rlaL0Pne53MMVojSqXI9G05BY139YmW+lk=;
        b=B5bjnPYxx0TrZ26BQG2Xnbj1oL5/iXHS5cs5gZLId2EC/eyYMrTzTFLsZ2E4QdJHPs
         QGuByqypaEeV3Qqn0YSXPr3+4FwOgEcs6NTpz27kAxxwM9Cl/wO2gcpjwp7YkQPRXa4P
         NEAVryo+9sb6y3DfxTKt7SUPBkRUndz3ycZEQrA0V0lBUw2MwYWwYu9f4l5nB7HGSEB7
         84mrZtm7260xc7q3VkGiwuY6QZDnIqZuVQHpYczfY7yh5yjbiyT22rNjmeLR/IPQUURu
         zaJ9+U6+24UYw3oYzv2XLmYrjUfzCLITjSvvwbHFfIPEjxsPE3PU7sUZl1Gy7Heq88Iw
         cFIw==
X-Gm-Message-State: ACrzQf3MfXO77nO224k0AeBxzaBfTlQ7BnZULPmxUvWMrRNWUz9KTL90
        wO5u1lAzrzqDG95bVMdiNd8WyYSj6ia/Zq1VON9jSlGuPLw=
X-Google-Smtp-Source: AMsMyM5lxTKIiElB5NO4KnhFjeWLDqHWiPV1kLQ1/5osb1K2FqLqDKVPFtHD7xbKcQ4tqTBREj+wL8LDG64rem6vxP4=
X-Received: by 2002:a17:907:2d0b:b0:782:76dc:e557 with SMTP id
 gs11-20020a1709072d0b00b0078276dce557mr17303700ejc.690.1664868634318; Tue, 04
 Oct 2022 00:30:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220926061259.13491-1-shubhrajyoti.datta@amd.com> <20220926061259.13491-3-shubhrajyoti.datta@amd.com>
In-Reply-To: <20220926061259.13491-3-shubhrajyoti.datta@amd.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 09:30:23 +0200
Message-ID: <CACRpkdbOvALG=LLK3QdSwscgBeTsK-dtay75DNKpdqaAAm1MAg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] gpio: pca9570: add a platform data structure
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc:     linux-gpio@vger.kernel.org, git@amd.com,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, brgl@bgdev.pl
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 8:14 AM Shubhrajyoti Datta
<shubhrajyoti.datta@amd.com> wrote:

> Add struct pca9570_platform_data for adding the platform data
> structure. Also modify the existing structs for pca9570 and pca9571
>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

This looks nice!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
