Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 799FA4DA3C5
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 21:10:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349531AbiCOULb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 16:11:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239744AbiCOUL2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 16:11:28 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3353150E2C
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:10:16 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id o64so476243oib.7
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=qr7mLmy1fKMWDaQiNo+jMIPdyrm4wXIOYIlliEovhEc=;
        b=JG1Cmyw2xVu1/a0FO4Qhj3E+xam1t3yfP3Hy4l9EmK6pbxymeMrhU9SiRYb6jBN54y
         TAX/l+1HffWDjcuLDzmnzAb6RsryhOkB0iudhYmAw1HlzBfa5MSj6hLlGRFk9XO4iKGg
         Ysva+ocHuwzYCkqXCZFqCtjYngzVcyMpca92I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=qr7mLmy1fKMWDaQiNo+jMIPdyrm4wXIOYIlliEovhEc=;
        b=1bkrZ4Voq4yHKteeF+4Jl5F6X+kcwMDlLo+G0n9Ldx5KQ0Ofrjgym5zDw1LOezVlRF
         USajpiD84/GQX3xMznZc1WlmDZy41tA0dkccXUfwOTqUYMsCRqt40t+gFHOvWNYNL05h
         S4VE9b9jdyahBHhimGKQJcJ5s7tQsDa1xNvNqC0h6kamqIFTWeTu808SynoyV+MSTXs8
         KfnH8zu04v5d3cEPHaqsGRMJcqcJhIBP8E5YNqUE3Ycw8YRhEp2LiFw90YAwTqkWtbbV
         1DtI4wVuXNfLMPX+NATCybFh2MrDGEB3g4548RbIX4+gWihAdpQ7uAZp3TUsYCZ00DYC
         7mrQ==
X-Gm-Message-State: AOAM533LdbgAL6EHK4mo3yqyZ0lFjZ1CbQcMUwBLbV+E7n+DDPEvbITI
        BJBwW+lgGqlKbSXLfl95LbUbYhyEfDwFOaMs9XwYpA==
X-Google-Smtp-Source: ABdhPJzxWkhht+qEZSYrN22qZaZlfHnVFOVILsjkLh1X8sD7Prt+0ouxZx/u4AiKtNV1P9mIWyx8isADRbZkZXv2wRs=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr2355671oie.193.1647375015594; Tue, 15
 Mar 2022 13:10:15 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Mar 2022 13:10:15 -0700
MIME-Version: 1.0
In-Reply-To: <20220315173042.1325858-8-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org> <20220315173042.1325858-8-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 15 Mar 2022 13:10:15 -0700
Message-ID: <CAE-0n50HqyY9VJNHTBrVE8W-oZOdPrhv94uRqhkJf8kaDOCVkQ@mail.gmail.com>
Subject: Re: [PATCH 7/7] iio: sx9360: Add pre-charge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-15 10:30:42)
> Add ability to set the precharge internal resistance from the device
> tree.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
