Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFB9E367BC8
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 10:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235252AbhDVILU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 04:11:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235099AbhDVILT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 04:11:19 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68EA1C06138D
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:10:45 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id t14-20020a05600c198eb029012eeb3edfaeso2701088wmq.2
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uhXyqG4ZxdDjqBkhxOQCYD5Nv2NYVdHJqhq6nBUFFjA=;
        b=peQPash9fIBmLfV68tEd9Ko7OwA7IV6eCox5z+H9i0paF3ymnAUJemE9GMsA41Cvis
         UAbkuo+BpLfbYpIo5NYpWtv7RoPKn2bcRh0K6rzL267NKx+/892K9Wt//CGf+x1fWPV8
         QZG+BujQyMxRY+DvGSoV6lSBzcI8uMNMCf4cvrNf1zlAjeJpi8+CGr0+pquPpIchbIAp
         dBV1ONdjlfWd/ElAKgz/AycD9zrqxux+j0dk51vc2MysITnPA6PL56j8ytE1qgHShdJb
         Q7vo4aAL+Wz8Ga9HjnpuVotTu0LD+h1iNPBtHig0Gahc77sU7TWuKej4IjIMFLPTy8ok
         DMiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uhXyqG4ZxdDjqBkhxOQCYD5Nv2NYVdHJqhq6nBUFFjA=;
        b=d4Q9h3OFeAIPQNZybPId5OsqyB8zhC63J3S+JX0z0NNy/2ZK3uZzL56U4uHS3yq5h/
         R4AeB3Wu3rc2YpDUV6T4LF01cWc5mQWmln6+H2R87/tkfO3YhVNPScJjwwJTcf8wj5fS
         RXwXxb6k1E4LUS+BXmrZXFLr762jVm5Qz8jvH0F8yWkCJeIZLWJqNsm4wPd5WmSpakdM
         Fui6Pxyug4DZbZ9MWrVz9UWWO7/81aSpx/ngRmnDtmFMhcIrRVoYrPJiZXYsx7x39ZKQ
         phlQcXZTUHrG/UJgXOGU9cHz7wshUcNnDTDg6e64IRdviUrXYjjCaRJrlXZoto/kAHW6
         ZgiQ==
X-Gm-Message-State: AOAM532xgMAi3VZQb04BALmsl3uothRjgY78PsPgLArCItJfTzMLPNda
        uYm6BtxbEshuPrFL5we+LUT50A==
X-Google-Smtp-Source: ABdhPJy3MRve6nSvRcYP4R4E/S5ASqa10CVolMkQ95QtOHVjaJKShKsN4+WXAPZX3OX+dWzAqn6YhA==
X-Received: by 2002:a1c:2646:: with SMTP id m67mr7810522wmm.71.1619079043796;
        Thu, 22 Apr 2021 01:10:43 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e88d:2580:c20:b786? ([2a01:e34:ed2f:f020:e88d:2580:c20:b786])
        by smtp.googlemail.com with ESMTPSA id k11sm5010954wmj.1.2021.04.22.01.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 01:10:43 -0700 (PDT)
Subject: Re: [PATCH v8 03/10] thermal: Use generic HW-protection shutdown API
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Matti Vaittinen <mazziesaccount@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>,
        Guenter Roeck <linux@roeck-us.net>,
        "agross@kernel.org" <agross@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-power <linux-power@fi.rohmeurope.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-renesas-soc@vger.kernel.org" 
        <linux-renesas-soc@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Matteo Croce <mcroce@microsoft.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Petr Mladek <pmladek@suse.com>,
        "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
        Mike Rapoport <rppt@kernel.org>,
        Josef Bacik <josef@toxicpanda.com>,
        Kai-Heng Feng <kai.heng.feng@canonical.com>,
        linux-pm@vger.kernel.org
References: <cover.1618832466.git.matti.vaittinen@fi.rohmeurope.com>
 <3b62226e320ab412357e102baf6d628e354a0b61.1618832466.git.matti.vaittinen@fi.rohmeurope.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c9b61f91-301b-92a2-f5e7-e8b8e2373040@linaro.org>
Date:   Thu, 22 Apr 2021 10:10:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3b62226e320ab412357e102baf6d628e354a0b61.1618832466.git.matti.vaittinen@fi.rohmeurope.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2021 13:49, Matti Vaittinen wrote:
> The hardware shutdown function was exported from kernel/reboot for
> other subsystems to use. Logic is copied from the thermal_core. The
> protection mutex is replaced by an atomic_t to allow calls also from
> an IRQ context.
> 
> Use the exported API instead of implementing own just for the
> thermal_core.

Can you update the documentation:

Documentation/driver-api/thermal/sysfs-api.rst

5. thermal_emergency_poweroff

Thanks
  -- Daniel


> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> 
> ---
> Changelog:
> v8:
>  - new patch (change added in v7, splitted in own patch at v8)
> 
> Use the exported API instead
> ---
>  drivers/thermal/thermal_core.c | 63 +++-------------------------------
>  1 file changed, 4 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
> index 996c038f83a4..b1444845af38 100644
> --- a/drivers/thermal/thermal_core.c
> +++ b/drivers/thermal/thermal_core.c
> @@ -36,10 +36,8 @@ static LIST_HEAD(thermal_governor_list);
>  
>  static DEFINE_MUTEX(thermal_list_lock);
>  static DEFINE_MUTEX(thermal_governor_lock);
> -static DEFINE_MUTEX(poweroff_lock);
>  
>  static atomic_t in_suspend;
> -static bool power_off_triggered;
>  
>  static struct thermal_governor *def_governor;
>  
> @@ -327,70 +325,18 @@ static void handle_non_critical_trips(struct thermal_zone_device *tz, int trip)
>  		       def_governor->throttle(tz, trip);
>  }
>  
> -/**
> - * thermal_emergency_poweroff_func - emergency poweroff work after a known delay
> - * @work: work_struct associated with the emergency poweroff function
> - *
> - * This function is called in very critical situations to force
> - * a kernel poweroff after a configurable timeout value.
> - */
> -static void thermal_emergency_poweroff_func(struct work_struct *work)
> -{
> -	/*
> -	 * We have reached here after the emergency thermal shutdown
> -	 * Waiting period has expired. This means orderly_poweroff has
> -	 * not been able to shut off the system for some reason.
> -	 * Try to shut down the system immediately using kernel_power_off
> -	 * if populated
> -	 */
> -	WARN(1, "Attempting kernel_power_off: Temperature too high\n");
> -	kernel_power_off();
> -
> -	/*
> -	 * Worst of the worst case trigger emergency restart
> -	 */
> -	WARN(1, "Attempting emergency_restart: Temperature too high\n");
> -	emergency_restart();
> -}
> -
> -static DECLARE_DELAYED_WORK(thermal_emergency_poweroff_work,
> -			    thermal_emergency_poweroff_func);
> -
> -/**
> - * thermal_emergency_poweroff - Trigger an emergency system poweroff
> - *
> - * This may be called from any critical situation to trigger a system shutdown
> - * after a known period of time. By default this is not scheduled.
> - */
> -static void thermal_emergency_poweroff(void)
> +void thermal_zone_device_critical(struct thermal_zone_device *tz)
>  {
> -	int poweroff_delay_ms = CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS;
>  	/*
>  	 * poweroff_delay_ms must be a carefully profiled positive value.
> -	 * Its a must for thermal_emergency_poweroff_work to be scheduled
> +	 * Its a must for forced_emergency_poweroff_work to be scheduled.
>  	 */
> -	if (poweroff_delay_ms <= 0)
> -		return;
> -	schedule_delayed_work(&thermal_emergency_poweroff_work,
> -			      msecs_to_jiffies(poweroff_delay_ms));
> -}
> +	int poweroff_delay_ms = CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS;
>  
> -void thermal_zone_device_critical(struct thermal_zone_device *tz)
> -{
>  	dev_emerg(&tz->device, "%s: critical temperature reached, "
>  		  "shutting down\n", tz->type);
>  
> -	mutex_lock(&poweroff_lock);
> -	if (!power_off_triggered) {
> -		/*
> -		 * Queue a backup emergency shutdown in the event of
> -		 * orderly_poweroff failure
> -		 */
> -		thermal_emergency_poweroff();
> -		orderly_poweroff(true);
> -		power_off_triggered = true;
> -	}
> -	mutex_unlock(&poweroff_lock);
> +	hw_protection_shutdown("Temperature too high", poweroff_delay_ms);
>  }
>  EXPORT_SYMBOL(thermal_zone_device_critical);
>  
> @@ -1549,7 +1495,6 @@ static int __init thermal_init(void)
>  	ida_destroy(&thermal_cdev_ida);
>  	mutex_destroy(&thermal_list_lock);
>  	mutex_destroy(&thermal_governor_lock);
> -	mutex_destroy(&poweroff_lock);
>  	return result;
>  }
>  postcore_initcall(thermal_init);
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
