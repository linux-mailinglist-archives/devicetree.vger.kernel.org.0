Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29FD74DA3BA
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 21:09:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351439AbiCOUKM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 16:10:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348213AbiCOUKL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 16:10:11 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBD4836E28
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:08:58 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id s207so453037oie.11
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=szfVA1CssGXx6wyUcE+WiHsIghcOQncu6KBVCruxv7o=;
        b=htCkNM4cbuuoUmUMChNF8gKlm6qMoxWDLvXRrgv+nZ0kfNOLEVT0T7xS3b22jHuAHF
         UNTHUHwHxeI8YMh5FPBs/932QBq58cupzz0ttXUDLIDdeB9SuCWlAVQ+0YQqMx0eTAfj
         htkntBQhRoXC+37LV0fY5mrZ8GWDHDK1xfCzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=szfVA1CssGXx6wyUcE+WiHsIghcOQncu6KBVCruxv7o=;
        b=cADeE0up6uEBcjNs4+ybAyRSG16qxfEc+jYVVeJKp7Yx+VJWJ5MxmmZyDORiWnZfqL
         4FY1c9VdmwONTMvmJpF1k2MHBuqPV+iNZemdHcCnezDjWDhoomJ96eMeB5d/rcIhH0FW
         x3MKQgWGX0iravJdGW7fRXs0dj/mfEcD2L3aJb2enc+7ens/8cQ+9hiGPPuYcK8SFLz8
         ADrw/p/I7sJiQwQvT3cdtEr/18tYtKlcX4XSXOrZ1ZOQxcL77luG4SHRspe4o6V6SZbT
         QEM2prJC6fW3EyxAt7K6bd6fm9+M0jzOFXDJwH8/LXTCq0WoiW8wr2/4dBPmBPhTaGiM
         yKhQ==
X-Gm-Message-State: AOAM530Up7jYMkcE17iJFgeXa2XCIfs/m/gX3lgTtkjqbV0A5Nia8CXv
        mMzHb7KwK0A7/Geq6EdtL30WUkYmXDI92wHW7DOhKQ==
X-Google-Smtp-Source: ABdhPJypwJVVL6cbovciwNR2Wm/fxlHoluQZjXVm67MIoZN5IpXwbB5HLfNuD3XipA0PJKlZ841TLGaLlfEmpTXhNzM=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr2517332oif.63.1647374938284; Tue, 15
 Mar 2022 13:08:58 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Mar 2022 13:08:57 -0700
MIME-Version: 1.0
In-Reply-To: <20220315173042.1325858-6-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org> <20220315173042.1325858-6-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 15 Mar 2022 13:08:57 -0700
Message-ID: <CAE-0n50_m-fnnjHnjeq18eY3x5udx4mm0aB3SQu04wg_tcC2Uw@mail.gmail.com>
Subject: Re: [PATCH 5/7] iio: sx9324: Add Setting for internal compensation resistor
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-15 10:30:40)
> Based on device tree setting, set the internal compensation resistor.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
