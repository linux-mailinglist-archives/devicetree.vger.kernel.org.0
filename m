Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F38F4A63CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 19:28:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234968AbiBAS1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 13:27:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239584AbiBAS1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 13:27:46 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F06EC061714
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 10:27:46 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id h14so16090374plf.1
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 10:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wRDb4Q0OUHfa9T1STBzKiRGQFZWKJ+ktX6ILipBqAeo=;
        b=B+DjrpCWX4FC1Ss9nB0jjzOGDl9282WS9n7Iim+dyOX6hHO/+llXFmqB68yVgC7+5E
         2S9RNmDY7hLT8z4PZOg24EGOjIqVzrpC2t6ftH4wOi+K/r9HLf+wOSQSkmtTedWtMqSQ
         2z+n0UDfGtj4Uz5ZuZ5R7VrsU26fkcdJkxnCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wRDb4Q0OUHfa9T1STBzKiRGQFZWKJ+ktX6ILipBqAeo=;
        b=kVZC0XxcYqtHkcUdQpHfRgxdInS8xyKqc/lgFAubxDBa36xxksGByb7WsDD6F80C6R
         f0mHI3ox1miW0aHht0s4bh/Vj1qsSU9stt9p6cEumkdjVAyoiYRlJND5ekeWlQsmHlZm
         SRMvNAYYjnppB5YUBrsZPS8zh3MQOThD2Wjlg+kTRXs/dj1lGDgU9d0loeI63/jqtmIh
         fGwVM7TM+PTL+Qy8CgkV/3bPsDcZ2z5gOhacfPygB5jmRZs6C3OZt9bmr57yZ2MwFqxc
         DivuSjVQCNB3g83KVYyZ05dnixi9cT4TnWZNZDKivA7Jrala68Aa1lzBv764TDMZZSfN
         01Ow==
X-Gm-Message-State: AOAM532mVyULjnI0EAUJjPOAbe2aHQ79O/ld23nPxtEg/Gk8E6w4QLCB
        cIkAQufTTCdEl3yKYAhshfok7g==
X-Google-Smtp-Source: ABdhPJz+47C+L3fxapk3a6H6R/yrjV4l3PzmwM2S2tqvNdby4LqEnKQ2M3o4/9v2qbQhBafMcpspig==
X-Received: by 2002:a17:90a:df0f:: with SMTP id gp15mr3759378pjb.175.1643740065517;
        Tue, 01 Feb 2022 10:27:45 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b049:8520:ebbc:2a55])
        by smtp.gmail.com with UTF8SMTPSA id s6sm31240205pgh.86.2022.02.01.10.27.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 10:27:45 -0800 (PST)
Date:   Tue, 1 Feb 2022 10:27:43 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        swboyd@chromium.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sc7280-idp: No need for
 "input-enable" on sw_ctrl
Message-ID: <Yfl7nwX+aq9YORsg@google.com>
References: <20220201001042.3724523-1-dianders@chromium.org>
 <20220131161034.5.Ibaf8a803802beb089cc6266b37e6156cff3ddaec@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220131161034.5.Ibaf8a803802beb089cc6266b37e6156cff3ddaec@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 04:10:42PM -0800, Douglas Anderson wrote:
> Specifying "input-enable" on a MSM GPIO is a no-op for the most
> part. The only thing it really does is to explicitly force the output
> of a GPIO to be disabled right at the point of a pinctrl
> transition. We don't need to do this and we don't typically specify
> "input-enable" unless there's a good reason to. Remove it.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
